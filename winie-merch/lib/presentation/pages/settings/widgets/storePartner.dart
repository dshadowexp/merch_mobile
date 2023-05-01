import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/identity/entities/identity.dart';
import 'package:winie_merch/infrastructure/identity/identity_repository.dart';
import 'package:winie_merch/presentation/pages/settings/widgets/utils.dart';

class PartnerWidget extends StatefulWidget {
  final Identity? member;
  final String adminId;
  final String memberId;

  const PartnerWidget({
    Key? key,
    required this.adminId,
    required this.memberId,
    required this.member,
  }) : super(key: key);

  @override
  _PartnerWidgetState createState() => _PartnerWidgetState();
}

class _PartnerWidgetState extends State<PartnerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: widget.member != null
          ? PartnerDetail(
              icon: Icons.person,
              photoURL: widget.member?.photo,
              displayName: widget.memberId == IdentityRepository.userId
                  ? '(You) ${widget.member?.userName}'
                  : '${widget.member?.userName}',
              detail: subDetails(widget.member!),
              isAdmin: widget.adminId == widget.memberId,
            )
          : Container(),
    );
  }
}

class PartnerDetail extends StatefulWidget {
  final IconData icon;
  final String? photoURL;
  final String? displayName;
  final String detail;
  final bool isAdmin;

  const PartnerDetail({
    Key? key,
    required this.icon,
    required this.photoURL,
    required this.displayName,
    required this.detail,
    required this.isAdmin,
  }) : super(key: key);

  @override
  _PartnerDetailState createState() => _PartnerDetailState();
}

class _PartnerDetailState extends State<PartnerDetail> {
  final loading = ValueNotifier<bool>(false);

  @override
  void dispose() {
    loading.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: AvaCle(
        radius: 18,
        icon: widget.icon,
        photoURL: widget.photoURL,
      ),
      title: Text(
        widget.displayName == null || widget.displayName!.isEmpty
            ? 'User'
            : widget.displayName!.capitalizeFirstofEach,
      ),
      subtitle: Text(
        widget.detail,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: widget.isAdmin
          ? ValueListenableBuilder(
              valueListenable: loading,
              builder: (_, load, __) => load as bool
                  ? Container()
                  : Container(
                      child: Text(
                        "owner",
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.green,
                          letterSpacing: 2,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.green),
                      ),
                    ),
            )
          : Text(''),
    );
  }
}

class PendingPartner extends StatefulWidget {
  final String partnerId;
  final String? photoURL;
  final String? displayName;
  final String storeId;
  final Function(bool, String) respond;

  const PendingPartner({
    Key? key,
    required this.partnerId,
    required this.photoURL,
    required this.displayName,
    required this.storeId,
    required this.respond,
  }) : super(key: key);

  @override
  _PendingPartnerState createState() => _PendingPartnerState();
}

class _PendingPartnerState extends State<PendingPartner> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: AvaCle(
        radius: 18,
        icon: Icons.person,
        photoURL: widget.photoURL,
      ),
      title: Text(
        widget.displayName == null || widget.displayName!.isEmpty
            ? 'User'
            : widget.displayName!.capitalizeFirstofEach,
      ),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PartnerAction(
            action: () {
              widget.respond(true, widget.partnerId);
            },
            text: 'Accept',
            color: Colors.green,
          ),
          PartnerAction(
            action: () {
              widget.respond(false, widget.partnerId);
            },
            text: 'Decline',
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class PartnerAction extends StatefulWidget {
  final String text;
  final Color color;
  final Function action;

  const PartnerAction({
    Key? key,
    required this.text,
    required this.color,
    required this.action,
  }) : super(key: key);

  @override
  _PartnerActionState createState() => _PartnerActionState();
}

class _PartnerActionState extends State<PartnerAction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: OutlinedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            widget.color,
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
          ),
        ),
        onPressed: () {
          widget.action();
        },
        child: Text(
          widget.text.capitalizeFirstofEach,
          style: TextStyle(
            fontSize: 14.0,
            color: widget.color,
            fontWeight: FontWeight.w400,
          ),
        ),
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
