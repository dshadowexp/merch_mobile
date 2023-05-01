import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:winie_merch/domain/navigation/entities/trip.dart';
import 'package:winie_merch/presentation/pages/address/addressPage.dart';
import 'package:winie_merch/presentation/pages/widgets/slideRoutes.dart';

class RequestBottom extends StatelessWidget {
  final TextEditingController addressController;
  final ValueNotifier<bool> loadNotifier;
  final String dropOffLocation;
  final Function request;

  const RequestBottom({
    Key? key,
    required this.addressController,
    required this.loadNotifier,
    required this.dropOffLocation,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 5.0,
          ),
          child: Text(
            'Request pickup',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Divider(
            thickness: 2,
            color: Colors.grey.shade200,
          ),
        ),
        ListTile(
          dense: true,
          leading: Icon(
            FeatherIcons.mapPin,
            size: 18,
            color: Colors.teal,
          ),
          title: Text(
            addressController.text,
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              FeatherIcons.edit2,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                SlideDownRoute(
                  page: AddressPage(
                    addressController: addressController,
                  ),
                ),
              );
            },
          ),
        ),
        ListTile(
          dense: true,
          leading: Icon(
            FeatherIcons.mapPin,
            size: 18,
            color: Colors.indigo,
          ),
          title: Text(
            dropOffLocation,
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: loadNotifier,
          builder: (_, load, __) => Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 10,
            ),
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 45),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  load as bool ? Colors.white : Colors.teal,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              child: Text(
                'Request',
                style: TextStyle(
                  color: load ? Colors.grey : Colors.white,
                  fontSize: 17,
                ),
              ),
              onPressed: !load
                  ? () async {
                      await request();
                    }
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}

class LoadingBottom extends StatelessWidget {
  final String message;
  final bool load;
  final bool show;
  final Function tryAgain;

  const LoadingBottom({
    Key? key,
    required this.show,
    required this.load,
    required this.message,
    required this.tryAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (load) ...[
          JumpingDotsProgressIndicator(
            fontSize: 40.0,
            color: Colors.green,
          ),
        ],
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 5.0,
          ),
          child: Text(
            message,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
          ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          child: Icon(
            Icons.motorcycle,
          ),
        ),
        if (show && !load) ...[
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 10,
            ),
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 45),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.teal,
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
              child: Text(
                'Restart',
                style: TextStyle(
                  color: load ? Colors.grey : Colors.white,
                  fontSize: 17,
                ),
              ),
              onPressed: () async {
                await tryAgain();
              },
            ),
          ),
        ],
      ],
    );
  }
}

class TrackBottom extends StatefulWidget {
  final Trip trip;

  const TrackBottom({
    Key? key,
    required this.trip,
  }) : super(key: key);

  @override
  _TrackBottomState createState() => _TrackBottomState();
}

class _TrackBottomState extends State<TrackBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 15,
        ),
        TrackDetails(
          address: widget.trip.pickLocation,
          timeRemaining: widget.trip.time,
          code: widget.trip.id.getOrCrash().substring(0, 6),
        ),
        Divider(),
        if (widget.trip.driverInfo != null) ...[
          DriverCard(
            driver: widget.trip.driverInfo!,
          ),
        ],
      ],
    );
  }
}

class TrackDetails extends StatelessWidget {
  final String code;
  final String address;
  final String timeRemaining;

  final Function? exit;

  const TrackDetails({
    Key? key,
    required this.address,
    required this.timeRemaining,
    required this.code,
    this.exit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'PickUp: ' + address,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$timeRemaining away",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text("|"),
                  Text(
                    code.toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DriverCard extends StatelessWidget {
  final Info driver;

  const DriverCard({
    Key? key,
    required this.driver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  driver.photo,
                ),
                backgroundColor: Colors.grey.shade100,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${driver.name}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Rating - ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: "${driver.rating}",
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              FeatherIcons.phoneCall,
              color: Colors.teal,
            ),
            onPressed: () async {
              final url = "tel:${driver.phoneNumber}";
              if (await canLaunch(url)) {
                await launch(url);
              }
            },
          ),
        ],
      ),
    );
  }
}
