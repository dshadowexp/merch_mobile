import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:geolocator/geolocator.dart';
import 'package:winie_merch/domain/navigation/entities/lat_long.dart';
import 'package:winie_merch/infrastructure/navigation/location_repository.dart';

import 'package:winie_merch/presentation/pages/widgets/dialogs.dart';

class AddressField extends StatefulWidget {
  final TextEditingController addressController;
  final TextEditingController dummyController;
  final ValueNotifier<bool> isLoading;
  final Function popNavigator;

  const AddressField({
    Key? key,
    required this.addressController,
    required this.isLoading,
    required this.dummyController,
    required this.popNavigator,
  }) : super(key: key);

  @override
  _AddressFieldState createState() => _AddressFieldState();
}

class _AddressFieldState extends State<AddressField> {
  final loadingNotifier = ValueNotifier<bool>(false);
  final clearedNotifier = ValueNotifier<bool>(true);

  @override
  void initState() {
    clearedNotifier.value = widget.addressController.text.isEmpty;
    super.initState();
  }

  @override
  void dispose() {
    clearedNotifier.dispose();
    loadingNotifier.dispose();
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void load(bool value) {
    if (mounted) {
      loadingNotifier.value = value;
    }
  }

  Future<void> _getAddressFromLatLng(double lat, double long) async {
    try {
      var address = await LocationRepository.fetchAddressFromGeocode(LatLong(
        lat: lat,
        lng: long,
      ));
      widget.addressController.text = address;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        autofocus: true,
        autocorrect: false,
        controller: widget.dummyController,
        onChanged: (val) {
          if (val.isNotEmpty) {
            clearedNotifier.value = false;
          } else {
            clearedNotifier.value = true;
          }
        },
        decoration: InputDecoration(
          hintText: 'Address',
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade400,
          ),
          prefixIcon: GestureDetector(
            onTap: () async {
              load(true);

              Position? location =
                  await LocationRepository.retrieveCurrentLocation();

              if (location != null) {
                await _getAddressFromLatLng(
                  location.latitude,
                  location.longitude,
                );

                widget.popNavigator();
              } else {
                await question(
                  context,
                  'Location access',
                  "Please enable location access in your app settings",
                  (answer) async {
                    if (answer) {
                      Geolocator.openAppSettings();
                    }
                  },
                );
              }
              load(false);
            },
            child: Icon(
              FeatherIcons.mapPin,
              color: Colors.green,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: ValueListenableBuilder(
              valueListenable: widget.isLoading,
              builder: (_, value, __) => ValueListenableBuilder(
                valueListenable: loadingNotifier,
                builder: (_, valueLoad, __) => ValueListenableBuilder(
                  valueListenable: clearedNotifier,
                  builder: (_, cleared, __) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (value as bool || valueLoad as bool) ...{
                          Center(
                            child: SizedBox(
                              width: 12,
                              height: 12,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                backgroundColor: Colors.transparent,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.grey),
                              ),
                            ),
                          ),
                        } else if (!(cleared as bool)) ...{
                          GestureDetector(
                            child: Icon(
                              Icons.close_outlined,
                              color: Colors.grey,
                            ),
                            onTap: () {
                              widget.dummyController.clear();
                            },
                          ),
                        } else ...{
                          Container(),
                        },
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
