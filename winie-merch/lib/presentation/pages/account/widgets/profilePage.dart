import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:winie_merch/application/auth/auth_flow/auth_flow_bloc.dart';
import 'package:winie_merch/application/identity/identity_bloc.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/auth/i_auth_repository.dart';
import 'package:winie_merch/domain/identity/i_identity_repository.dart';
import 'package:winie_merch/infrastructure/core/uploads.dart';
import 'package:winie_merch/presentation/pages/auth/widgets/authUtils.dart';
import 'package:winie_merch/presentation/pages/widgets/dialogs/contactDialog.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/imageField.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';

import 'package:winie_merch/presentation/routes/router.gr.dart';

import '../../../../injection.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => _callIdentity(context));
  }

  void _callIdentity(BuildContext context) {
    context.read<IdentityBloc>().add(IdentityEvent.getIdentity());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdentityBloc, IdentityState>(
      builder: (content, state) {
        return state.maybeMap(
          present: (identity) {
            var user = identity.identity;

            return ListTile(
              onTap: () async {
                AutoRouter.of(context).push(
                  ProfileRoute(),
                );
              },
              tileColor: Colors.white,
              leading: user.photo != null && user.photo!.isNotEmpty
                  ? CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      backgroundImage: CachedNetworkImageProvider(
                        user.photo!,
                      ),
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      child: Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green,
                      ),
                    ),
              title: Text(
                user.userName == null || user.userName!.isEmpty
                    ? "Complete your profile"
                    : user.userName!.capitalizeFirstofEach,
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 18,
              ),
            );
          },
          orElse: () {
            return ListTile(
              onTap: () async {
                _callIdentity(context);
              },
              tileColor: Colors.white,
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.teal,
                ),
              ),
              title: Text("Reload profile"),
            );
          },
        );
      },
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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

  loading(ValueNotifier<bool> notifier, bool load) {
    if (this.mounted) {
      notifier.value = load;
    }
  }

  _logOut() {
    authQuestion(
      context,
      'Logout',
      "Are you sure you want to log out?",
      (answer) async {
        if (answer) {
          IAuthRepository _authRepository = getIt<IAuthRepository>();
          loading(loadingNotifier, true);
          await _authRepository.signOut();
          loading(loadingNotifier, false);
          context.read<AuthFlowBloc>().add(AuthFlowEvent.signedOut());
          AutoRouter.of(context).pushAndPopUntil(
            SplashScreen(),
            predicate: (Route<dynamic> route) => false,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthFlowBloc>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          centerTitle: true,
          title: Text('Profile'),
          leading: IconButton(
            onPressed: () {
              if (!loadingNotifier.value) {
                Navigator.pop(context);
              }
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: BlocBuilder<IdentityBloc, IdentityState>(
            builder: (content, state) {
              return state.maybeMap(
                orElse: () {
                  return Container();
                },
                present: (presentState) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageField(
                                setIdentityImage: (String imageFilePath) async {
                                  var photourl = await getIt<Uploads>()
                                      .uploadImage(imageFilePath);
                                  final _identityRepository =
                                      getIt<IIdentityRepository>();
                                  await _identityRepository
                                      .updateIdentity({"photo": photourl});
                                  setState(() {});
                                },
                                imageLink: presentState.identity.photo !=
                                            null &&
                                        presentState.identity.photo!.isNotEmpty
                                    ? presentState.identity.photo!
                                    : null,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Column(
                            children: [
                              Divider(),
                              ProfileDetail(
                                icon: FeatherIcons.userCheck,
                                mapKey: "userName",
                                label: "Name:",
                                validation: null,
                                data: presentState.identity.userName != null
                                    ? presentState.identity.userName!
                                        .capitalizeFirstofEach
                                    : "",
                                canEmpty: false,
                              ),
                              Divider(),
                              ProfileDetail(
                                mapKey: "phoneNumber",
                                icon: FeatherIcons.phone,
                                label: "Phone Number:",
                                validation: validateContactNumber,
                                data: presentState.identity.phoneNumber,
                                canEmpty: false,
                              ),
                              Divider(),
                              ProfileDetail(
                                mapKey: "email",
                                icon: FeatherIcons.mail,
                                label: "Email:",
                                validation: validateEmail,
                                data: presentState.identity.email,
                                canEmpty: false,
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: _logOut,
                          child: LogoutLine(),
                        ),
                        Divider(),
                        SafeArea(
                          child: ValueListenableBuilder(
                            valueListenable: loadingNotifier,
                            builder: (_, loading, __) => loading as bool
                                ? JumpingDotsProgressIndicator(
                                    fontSize: 40.0,
                                    color: Colors.white,
                                  )
                                : Container(),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class LogoutLine extends StatelessWidget {
  const LogoutLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 4,
              bottom: 4,
            ),
            child: Icon(
              FeatherIcons.logOut,
              size: 21,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "Logout",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileDetail extends StatefulWidget {
  final String label;
  final String mapKey;
  final IconData icon;
  final String? data;
  final bool canEmpty;
  final Function(String)? validation;

  ProfileDetail({
    Key? key,
    required this.icon,
    required this.mapKey,
    required this.label,
    required this.data,
    required this.validation,
    required this.canEmpty,
  }) : super(key: key);

  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  TextEditingController controller = TextEditingController();
  final loadingNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    loadingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.canEmpty
          ? null
          : () {
              if (!loadingNotifier.value) {
                controller.text = widget.data != null ? widget.data! : "";
                contactDialog(
                  context,
                  widget.label,
                  'Edit your ${widget.label}',
                  widget.mapKey == "phoneNumber",
                  widget.validation,
                  controller,
                  () async {
                    loadingNotifier.value = true;
                    final _identityRepository = getIt<IIdentityRepository>();
                    await _identityRepository
                        .updateIdentity({widget.mapKey: controller.text});
                    if (this.mounted) {
                      loadingNotifier.value = false;
                    }
                  },
                );
              }
            },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 5,
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
              child: ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, loading, __) => !(loading as bool)
                    ? Icon(
                        widget.icon,
                        size: 21,
                        color: Colors.green,
                      )
                    : const SizedBox(
                        width: 12,
                        height: 12,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.grey),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                widget.label,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, loading, __) => !(loading as bool)
                    ? Text(
                        widget.data == null
                            ? "Not setup!"
                            : widget.data!.isNotEmpty ||
                                    (widget.data!.isEmpty && widget.canEmpty)
                                ? widget.data!
                                : "Not setup!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          color: widget.data != null && widget.data!.isNotEmpty
                              ? Colors.black
                              : Colors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    : Text(
                        "updating",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
