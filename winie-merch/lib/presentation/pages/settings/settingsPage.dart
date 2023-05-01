import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:share/share.dart';
import 'package:winie_merch/application/store_manager/store/store_bloc.dart';
import 'package:winie_merch/domain/core/extensions.dart';
import 'package:winie_merch/domain/store_manager/entities/store.dart';
import 'package:winie_merch/domain/store_manager/i_store_manager_repository.dart';
import 'package:winie_merch/infrastructure/identity/identity_repository.dart';
import 'package:winie_merch/injection.dart';
import 'package:winie_merch/presentation/pages/address/addressPage.dart';
import 'package:winie_merch/presentation/pages/orders/widgets/orderUtils.dart';
import 'package:winie_merch/presentation/pages/settings/widgets/storePartner.dart';
import 'package:winie_merch/presentation/pages/widgets/avoidKeyboard.dart';
import 'package:winie_merch/presentation/pages/widgets/slideRoutes.dart';
import 'package:winie_merch/presentation/routes/router.gr.dart';

class SettingsPage extends StatefulWidget {
  final Function popNavigator;

  const SettingsPage({
    Key? key,
    required this.popNavigator,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

double iconSize = 40;

class _SettingsPageState extends State<SettingsPage> {
  IStoreManagerRepository _storeManagerRepository =
      getIt<IStoreManagerRepository>();

  final _scaffoldkey = GlobalKey<ScaffoldState>();
  bool loading = false;
  bool toggledOn = false;

  load(bool val) {
    setState(() {
      loading = val;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void share(BuildContext context, String subject, String text) {
    Share.share(
      text,
      subject: subject,
    );
  }

  updateStoreDetail(String detailName, String newStoreAddress) async {
    await showAsyncLoadingDialog(context, () async {
      await _storeManagerRepository.updateStore(
        {detailName: newStoreAddress},
      );
    });
  }

  showResult(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(seconds: 5),
    ));
  }

  respondPartnerRespond(bool respond, String partnerId) {
    if (respond) {
      context.read<StoreBloc>().add(StoreEvent.acceptStorePartner(partnerId));
    } else {
      context.read<StoreBloc>().add(StoreEvent.declineStorePartner(partnerId));
    }
  }

  changeStore(String storeId) {
    context.read<StoreBloc>().add(StoreEvent.changeCurrentStore(storeId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          'Settings',
          style: GoogleFonts.mulish().copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.teal,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<StoreBloc, StoreState>(
        builder: (context, state) {
          if (state.currentStore != null) {
            return ListView(
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  AllStores(
                    changeStore: changeStore,
                    currentStore: state.currentStore!,
                    stores: state.stores,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    color: Colors.grey.shade100,
                    child: Center(
                      child: Text(
                        'current store details'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                  _SettingsTile(
                    fieldName: 'Id',
                    content:
                        state.currentStore!.id.getOrCrash().substring(0, 6),
                    onTap: null,
                  ),
                  _SettingsTile(
                    fieldName: 'name',
                    content: state.currentStore!.name.capitalize,
                    onTap: () {
                      TextEditingController nameController =
                          TextEditingController();
                      nameController.text = state.currentStore!.name;
                      Navigator.push(
                        context,
                        SlideLeftRoute(
                          page: _DetailChangePage(
                            detailName: 'name',
                            controller: nameController,
                            popNavigator: () async {
                              await updateStoreDetail(
                                  'name', nameController.text);
                              setState(() {});
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  _SettingsTile(
                    fieldName: 'location',
                    content: state.currentStore!.address,
                    onTap: () {
                      TextEditingController addressController =
                          TextEditingController();
                      addressController.text = state.currentStore!.address;
                      Navigator.push(
                        context,
                        SlideLeftRoute(
                          page: AddressPage(
                            addressController: addressController,
                          ),
                        ),
                      );
                    },
                  ),
                  _SettingsTile(
                    fieldName: 'url',
                    content: state.currentStore!.dynamicLink,
                    onTap: () {
                      share(
                        context,
                        "there",
                        state.currentStore!.dynamicLink,
                      );
                    },
                  ),
                  // _SettingsTile(
                  //   fieldName: 'partners',
                  //   content: "",
                  //   onTap: null,
                  //   widget:
                  //       IdentityRepository.userId != state.currentStore!.owner
                  //           ? null
                  //           : IconButton(
                  //               onPressed: () {
                  //                 AutoRouter.of(context).navigate(
                  //                   AddPartnerRoute(
                  //                     store: state.currentStore!,
                  //                   ),
                  //                 );
                  //               },
                  //               icon: Icon(
                  //                 FeatherIcons.userPlus,
                  //                 color: Colors.green,
                  //               ),
                  //             ),
                  // ),
                  // if (state.currentStorePartners.isNotEmpty &&
                  //     state.currentStore != null) ...[
                  //   for (var partner in state.currentStore!.partners)
                  //     PartnerWidget(
                  //       adminId: state.currentStore!.owner,
                  //       memberId: partner,
                  //       member: state.currentStorePartners[partner],
                  //     ),
                  // ],
                  // if (state.partnerRequests.isNotEmpty &&
                  //     state.currentStore != null) ...[
                  //   _SettingsTile(
                  //     fieldName: 'requests',
                  //     content: "",
                  //     onTap: null,
                  //   ),
                  //   for (var entry in state.partnerRequests.entries)
                  //     PendingPartner(
                  //       partnerId: entry.key,
                  //       photoURL: entry.value.photo,
                  //       displayName: entry.value.userName,
                  //       storeId: state.currentStore!.id.getOrCrash(),
                  //       respond: respondPartnerRespond,
                  //     ),
                  // ]
                ],
              ).toList(),
            );
          } else {
            return Center(
              child: JumpingDotsProgressIndicator(
                fontSize: 40.0,
                color: Colors.teal,
              ),
            );
          }
        },
      ),
    );
  }
}

class _DetailChangePage extends StatefulWidget {
  final TextEditingController? controller;
  final String? detailName;
  final Function? popNavigator;

  _DetailChangePage({
    Key? key,
    this.controller,
    this.detailName,
    this.popNavigator,
  }) : super(key: key);

  @override
  __DetailChangePageState createState() => __DetailChangePageState();
}

class __DetailChangePageState extends State<_DetailChangePage> {
  final TextEditingController dummy = TextEditingController();

  @override
  void initState() {
    dummy.text = widget.controller!.text;
    super.initState();
  }

  @override
  void dispose() {
    dummy.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.detailName!.capitalizeFirstofEach,
          style: GoogleFonts.mulish().copyWith(
            color: Colors.green,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.green,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            color: Colors.grey.shade100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "This is how this detail appears on Winie, so use one your customers will identity with",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: TextField(
              autofocus: false,
              autocorrect: false,
              controller: dummy,
              textAlign: TextAlign.center,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: (text) {
                setState(() {});
              },
            ),
          ),
          Spacer(),
          if (dummy.text != widget.controller!.text) ...[
            AvoidKeyboard(
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
                      widget.controller!.text = dummy.text;
                      await widget.popNavigator!();
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Save",
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
          ],
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final String fieldName;
  final String content;
  final Function()? onTap;
  final IconData? icon;
  final Widget? widget;

  const _SettingsTile({
    Key? key,
    required this.fieldName,
    required this.content,
    required this.onTap,
    this.icon,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListTile(
      dense: true,
      onTap: onTap,
      title: Text(
        fieldName.capitalizeFirstofEach,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: size.width * 0.5,
            child: Text(
              content,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (onTap != null) ...[
            Icon(
              icon ?? Icons.navigate_next,
              size: 15,
            ),
          ],
          if (widget != null) ...[
            widget!,
          ],
        ],
      ),
    );
  }
}

class AllStores extends StatefulWidget {
  final Store currentStore;
  final List<Store> stores;
  final Function(String) changeStore;

  const AllStores({
    Key? key,
    required this.currentStore,
    required this.stores,
    required this.changeStore,
  }) : super(key: key);

  @override
  _AllStoresState createState() => _AllStoresState();
}

class _AllStoresState extends State<AllStores> {
  List<Widget> storeTiles() {
    List<Widget> tiles = [];

    tiles.add(
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Divider(),
      ),
    );

    for (int i = 0; i < widget.stores.length; i++) {
      tiles.add(
        ListTile(
          leading: Icon(
            FeatherIcons.home,
            color: Colors.teal,
          ),
          title: Text(
            widget.stores[i].name.capitalize,
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
          trailing: Icon(
            FeatherIcons.check,
            size: 15,
            color: widget.stores[i].id.getOrCrash() ==
                    widget.currentStore.id.getOrCrash()
                ? Colors.teal
                : Colors.transparent,
          ),
          onTap: () {
            widget.changeStore(widget.stores[i].id.getOrCrash());
            Navigator.pop(context);
          },
        ),
      );
    }

    tiles.add(
      SizedBox(height: 20),
    );
    return tiles;
  }

  storesDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      builder: (BuildContext bc) {
        return SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Center(
                  child: const Text(
                    "Select active store",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Column(
                children: storeTiles(),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        storesDialog(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 10,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.teal,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: '(${widget.stores.length}) Current: ',
                  style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: widget.currentStore.name.capitalize,
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
