import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/infrastructure/dynamic_links/dynamic_links_repository.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';

class AddPartnerPage extends StatefulWidget {
  final Store store;

  const AddPartnerPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  _AddPartnerPageState createState() => _AddPartnerPageState();
}

class _AddPartnerPageState extends State<AddPartnerPage> {
  final loadingNotifier = ValueNotifier<bool>(false);
  final invitationURL = ValueNotifier<String>('');

  @override
  void dispose() {
    loadingNotifier.dispose();
    invitationURL.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: AvoidKeyboard(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 10,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 60),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF48A14D),
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              onPressed: () async {
                if (!loadingNotifier.value) {
                  if (this.mounted) {
                    loadingNotifier.value = true;
                  }

                  var inviteLink =
                      await DynamicLinksRepository.createPartnerInvitation({
                    'id': widget.store.id.getOrCrash(),
                    'name': widget.store.name,
                    'desc': '',
                    'imageURL': '',
                  });

                  if (this.mounted) {
                    invitationURL.value = inviteLink;
                    loadingNotifier.value = false;
                  }

                  Share.share(
                    '${widget.store.name} is inviting you to join as a partner in their shop on Winie Merch. Please click and follow the link below to accept the invitation, ${invitationURL.value}',
                    subject: 'Invitation to partner',
                  );
                }
              },
              child: Text(
                "Send invite",
                style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              'Invite a partner',
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
              'Join forces with your partners to manage the affairs of a shop and boost efficiency',
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
        ],
      ),
    );
  }
}
