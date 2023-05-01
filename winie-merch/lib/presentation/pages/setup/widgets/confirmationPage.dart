import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:winie_merch/infrastructure/core/app_data.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/authButton.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../../../injection.dart';

class AccountConfirmation extends StatefulWidget {
  final Map<String, dynamic> data;

  const AccountConfirmation({
    required this.data,
  });

  @override
  _AccountConfirmationState createState() => _AccountConfirmationState();
}

class _AccountConfirmationState extends State<AccountConfirmation> {
  final setup = GlobalKey<ScaffoldState>();
  final idRepo = getIt<IIdentityRepository>();
  final loadingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    loadingNotifier.dispose();
    super.dispose();
  }

  void load(bool value) {
    if (this.mounted) {
      loadingNotifier.value = value;
    }
  }

  _error(String failureMessage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(failureMessage),
      duration: Duration(seconds: 3),
    ));
  }

  loadAppData() async {
    await getIt<AppData>().getDataFromDatabase("categories");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Detail Confirmation",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: ValueListenableBuilder(
          valueListenable: loadingNotifier,
          builder: (_, loading, __) => loading as bool
              ? Container()
              : IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  ),
                ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            children: [
              AvaCle(
                radius: 30,
                icon: Icons.sentiment_very_satisfied,
                photoURL: widget.data["photo"],
              ),
              SizedBox(
                height: 10,
              ),
              ConfDetails(
                icon: FeatherIcons.user,
                label: "Full Name",
                data: widget.data["userName"],
              ),
              ConfDetails(
                icon: FeatherIcons.phone,
                label: "Phone Number",
                data: widget.data["phoneNumber"],
              ),
              ConfDetails(
                icon: FeatherIcons.mail,
                label: "Email",
                data: widget.data["email"],
              ),
              ConfDetails(
                icon: FeatherIcons.home,
                label: "Shop Name",
                data: widget.data["storeName"],
              ),
              ConfDetails(
                icon: FeatherIcons.phone,
                label: "Shop Number",
                data: widget.data["shopContact"],
              ),
              ConfDetails(
                icon: FeatherIcons.mapPin,
                label: "Shop Address",
                data: widget.data["address"],
              ),
              ConfDetails(
                icon: FeatherIcons.clock,
                label: "Time Range",
                data: widget.data["timeRange"],
              ),
              ConfDetails(
                icon: Icons.money,
                label: "Mobile Money",
                data: widget.data["momoNumber"],
              ),
              ConfDetails(
                icon: Icons.wifi,
                label: "Network",
                data: widget.data["network"],
              ),
              Spacer(),
              ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, value, __) => AuthButton(
                  buttonText: 'Set up',
                  isActive: !(value as bool),
                  onPressedFunc: () async {
                    load(true);

                    var value = await idRepo.create(widget.data);
                    value.fold(
                      (l) {
                        load(false);
                        _error("Something went wrong, please try again");
                      },
                      (r) async {
                        await loadAppData();
                        await AutoRouter.of(context).pushAndPopUntil(
                          LandingRoute(),
                          predicate: (route) => false,
                        );
                      },
                    );
                  },
                  isLoading: value,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfDetails extends StatelessWidget {
  final String label;
  final IconData icon;
  final String data;

  const ConfDetails({
    Key? key,
    required this.icon,
    required this.label,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 15,
              top: 4,
              bottom: 4,
            ),
            child: Icon(
              icon,
              size: 21,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              data,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AvaCle extends StatelessWidget {
  final String? photoURL;
  final IconData icon;
  final double radius;

  const AvaCle({
    Key? key,
    required this.icon,
    required this.photoURL,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return photoURL == null || photoURL!.isEmpty
        ? CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            radius: radius,
            child: Icon(
              icon,
              size: radius,
              color: Colors.black38,
            ),
          )
        : CircleAvatar(
            radius: radius,
            backgroundColor: Colors.grey.shade100,
            backgroundImage: CachedNetworkImageProvider(
              photoURL!,
            ),
          );
  }
}
