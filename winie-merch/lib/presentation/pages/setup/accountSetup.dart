import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winie_merch/domain/auth/entities/user.dart';
import 'package:winie_merch/presentation/pages/setup/widgets/confirmationPage.dart';
import 'package:winie_merch/presentation/pages/setup/widgets/paymentData.dart';
import 'package:winie_merch/presentation/pages/setup/widgets/personalData.dart';
import 'package:winie_merch/presentation/pages/widgets/forms/setupForms.dart';
import 'widgets/shopData.dart';

class AccountSetup extends StatefulWidget {
  final User userData;

  const AccountSetup({
    Key? key,
    required this.userData,
  }) : super(key: key);

  @override
  _AccountSetupState createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {
  PageController _pageController = PageController();
  final loadingNotifier = ValueNotifier<bool>(false);
  final currentPageNotifier = ValueNotifier<int>(0);
  final dataNotifier = ValueNotifier<Map<String, dynamic>>({'photo': ''});

  @override
  void initState() {
    super.initState();
    decoupleUser();
  }

  @override
  void dispose() {
    loadingNotifier.dispose();
    currentPageNotifier.dispose();
    _pageController.dispose();
    dataNotifier.dispose();
    super.dispose();
  }

  decoupleUser() {
    if (widget.userData.photoUrl != null &&
        widget.userData.photoUrl.isNotEmpty) {
      dataNotifier.value['photo'] = widget.userData.photoUrl;
    }
    if (widget.userData.userName != null &&
        widget.userData.userName.isNotEmpty) {
      dataNotifier.value['userName'] = widget.userData.userName;
    }
    if (widget.userData.phoneNumber != null &&
        widget.userData.phoneNumber.isNotEmpty) {
      dataNotifier.value['phoneNumber'] = widget.userData.phoneNumber;
    }
    if (widget.userData.email != null && widget.userData.email.isNotEmpty) {
      dataNotifier.value['email'] = widget.userData.email;
    }
  }

  _error(String failureMessage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(failureMessage),
      duration: Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          centerTitle: true,
          title: Text(
            "Winie Merch",
            style: GoogleFonts.mulish().copyWith(
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (page) {
                  currentPageNotifier.value = page;
                },
                children: [
                  ValueListenableBuilder(
                    valueListenable: dataNotifier,
                    builder: (_, data, __) => PersonalData(
                      savedData: data as Map<String, dynamic>,
                      data: (val) {
                        val.forEach(
                            (key, value) => dataNotifier.value[key] = value);
                      },
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: dataNotifier,
                    builder: (_, data, __) => ShopData(
                      savedData: data as Map<String, dynamic>,
                      data: (val) {
                        val.forEach(
                            (key, value) => dataNotifier.value[key] = value);
                      },
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: dataNotifier,
                    builder: (_, data, __) => PaymentData(
                      savedData: data as Map<String, dynamic>,
                      data: (val) {
                        val.forEach(
                            (key, value) => dataNotifier.value[key] = value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.grey,
                  onPressed: () {
                    if (currentPageNotifier.value == 0) {
                      Navigator.pop(context);
                    } else {
                      currentPageNotifier.value--;
                      _pageController.animateTo(
                          MediaQuery.of(context).size.width *
                              currentPageNotifier.value,
                          duration: new Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    }
                  },
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ValueListenableBuilder(
                    valueListenable: currentPageNotifier,
                    builder: (_, page, __) => DotsIndicator(
                      position: (page as int).toDouble(),
                      dotsCount: 3,
                      decorator: DotsDecorator(
                        size: const Size.square(7.0),
                        activeSize: const Size(15.0, 9.0),
                        spacing: EdgeInsets.symmetric(
                          horizontal: 3,
                        ),
                        color: Colors.black26,
                        activeColor: Colors.green,
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.green,
                  onPressed: () {
                    if (currentPageNotifier.value == 0 &&
                        dataNotifier.value.containsKey("userName") &&
                        dataNotifier.value['userName'].isNotEmpty &&
                        dataNotifier.value.containsKey('email') &&
                        dataNotifier.value.containsKey('phoneNumber') &&
                        dataNotifier.value['email'].isNotEmpty &&
                        validateEmail(dataNotifier.value['email']) == null &&
                        dataNotifier.value['phoneNumber'].isNotEmpty &&
                        validateContactNumber(
                                dataNotifier.value['phoneNumber']) ==
                            null) {
                      currentPageNotifier.value = 1;

                      _pageController.animateTo(
                          MediaQuery.of(context).size.width *
                              currentPageNotifier.value,
                          duration: new Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    } else if (currentPageNotifier.value == 1 &&
                        dataNotifier.value.containsKey("storeName") &&
                        dataNotifier.value['storeName'].isNotEmpty &&
                        dataNotifier.value.containsKey("address") &&
                        dataNotifier.value['address'].isNotEmpty &&
                        dataNotifier.value.containsKey("shopContact") &&
                        dataNotifier.value.containsKey("timeRange") &&
                        dataNotifier.value['timeRange'].isNotEmpty &&
                        dataNotifier.value['shopContact'].isNotEmpty &&
                        validateContactNumber(
                                dataNotifier.value['shopContact']) ==
                            null) {
                      currentPageNotifier.value = 2;

                      _pageController.animateTo(
                          MediaQuery.of(context).size.width *
                              currentPageNotifier.value,
                          duration: new Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    } else if ((currentPageNotifier.value == 2 &&
                        dataNotifier.value.containsKey("momoNumber") &&
                        dataNotifier.value['momoNumber'].isNotEmpty &&
                        dataNotifier.value.containsKey("network") &&
                        dataNotifier.value['network'].isNotEmpty)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => AccountConfirmation(
                            data: dataNotifier.value,
                          ),
                        ),
                      );
                    } else {
                      _error("please fill all fields");
                    }
                  },
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
