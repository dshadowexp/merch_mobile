import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/setup/widgets/confirmationPage.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/authButton.dart';

class JoinPartnerPage extends StatefulWidget {
  final Store store;
  final Function callBack;

  const JoinPartnerPage({
    Key? key,
    required this.store,
    required this.callBack,
  }) : super(key: key);

  @override
  _JoinPartnerPageState createState() => _JoinPartnerPageState();
}

class _JoinPartnerPageState extends State<JoinPartnerPage> {
  final loadingNotifier = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(text: '${widget.store.name.capitalize}'),
          ),
          ConfDetails(
            icon: FeatherIcons.home,
            label: "Shop Name",
            data: widget.store.name,
          ),
          ConfDetails(
            icon: FeatherIcons.user,
            label: "Owner",
            data: widget.store.owner,
          ),
          Spacer(),
          Center(
            child: SvgPicture.asset(
              "assets/images/co_partners.svg",
              height: size.height * 0.15,
              width: size.height * 0.15,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 60,
            ),
            child: Text(
              'Partner with a shop',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish().copyWith(
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 50,
            ),
            child: Text(
              'To drive more customers to your shop, you can create shopping vouchers with discounts and share to your customers.',
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish().copyWith(
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          ValueListenableBuilder(
            valueListenable: loadingNotifier,
            builder: (_, value, __) => AuthButton(
              buttonText: 'Join up',
              isActive: !(value as bool),
              isLoading: value,
              onPressedFunc: () async {
                final storeApi = getIt<IStoreManagerRepository>();
                final response = await storeApi
                    .joinStoreAsPartner(widget.store.id.getOrCrash());

                widget.callBack();
                if (response) {
                  widget.callBack();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Could not join store'),
                    duration: Duration(seconds: 5),
                  ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
