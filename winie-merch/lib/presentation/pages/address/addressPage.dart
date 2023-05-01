import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
import 'package:winie_merch/infrastructure/navigation/location_repository.dart';
import 'package:winie_merch/infrastructure/navigation/navigation_dtos.dart';

import 'addressField.dart';

class AddressPage extends StatefulWidget {
  final TextEditingController addressController;
  final List<dynamic>? addressHistory;

  const AddressPage({
    Key? key,
    required this.addressController,
    this.addressHistory,
  }) : super(key: key);
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController dummyAddressController = TextEditingController();
  final loadingNotifier = ValueNotifier<bool>(false);
  final addressesNotifier = ValueNotifier<List<Suggestion>>([]);
  List<Suggestion> initAddresses = [];
  String? sessionToken;

  @override
  void initState() {
    sessionToken = Uuid().v4();
    dummyAddressController.text = widget.addressController.text;

    dummyAddressController.addListener(() async {
      if (dummyAddressController.text.isNotEmpty && !loadingNotifier.value) {
        await search();
      }
    });

    if (widget.addressHistory != null) {
      for (var address in widget.addressHistory!) {
        initAddresses.add(Suggestion('', address, ''));
      }
      addressesNotifier.value = initAddresses;
    }

    super.initState();
  }

  @override
  void dispose() {
    addressesNotifier.dispose();
    loadingNotifier.dispose();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  setLoading(bool load) {
    if (this.mounted) {
      loadingNotifier.value = load;
    }
  }

  setAddresses(List<Suggestion> suggestions) {
    if (this.mounted) {
      addressesNotifier.value = suggestions;
    }
  }

  search() async {
    List<Suggestion> suggestions = [];
    if (dummyAddressController.text.isNotEmpty && this.mounted) {
      setLoading(true);
      suggestions = await LocationRepository.fetchAddressSuggestions(
        sessionToken!,
        dummyAddressController.text,
      );

      setLoading(false);
      if (dummyAddressController.text.isEmpty) {
        setAddresses(initAddresses);
      } else {
        setAddresses(suggestions);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        centerTitle: false,
        title: Text(
          'Enter Delivery Address',
          style: GoogleFonts.mulish().copyWith(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AddressField(
                    addressController: widget.addressController,
                    dummyController: dummyAddressController,
                    popNavigator: () {
                      Navigator.pop(context, widget.addressController.text);
                    },
                    isLoading: loadingNotifier,
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: addressesNotifier,
              builder: (_, values, __) => ListView.builder(
                shrinkWrap: true,
                itemCount: (values as List<Suggestion>).length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(
                        FeatherIcons.mapPin,
                        color: Colors.grey.shade300,
                      ),
                      title: Text(
                        values[index].description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: values[index].detail.isEmpty
                          ? null
                          : Text(
                              values[index].detail,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade500,
                              ),
                            ),
                      onTap: () {
                        widget.addressController.text =
                            values[index].description;
                        Navigator.pop(context, widget.addressController.text);
                      },
                      dense: true,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
