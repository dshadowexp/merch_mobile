import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:winie_merch/presentation/pages/widgets/loader.dart';

class VariationImage extends StatefulWidget {
  final String imageUrl;
  final Function(String) select;

  const VariationImage({
    Key? key,
    required this.imageUrl,
    required this.select,
  }) : super(key: key);

  @override
  _VariationImageState createState() => _VariationImageState();
}

class _VariationImageState extends State<VariationImage> {
  XFile? _image;
  final _imagePicker = ImagePicker();

  _changeImage(ImageSource source) async {
    try {
      final image = await _imagePicker.pickImage(
        source: source,
        imageQuality: 50,
      );

      if (image != null) {
        _image = XFile(image.path);
        widget.select(image.path);
        setState(() {});
      }
    } catch (e) {}
  }

  optionDialog(BuildContext context) {
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
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    "Select",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.photo_camera,
                      color: Colors.green,
                    ),
                    title: Text('Camera'),
                    onTap: () async {
                      await _changeImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    title: Text('Photo Library'),
                    onTap: () async {
                      await _changeImage(ImageSource.gallery);
                      Navigator.of(context).pop();
                    },
                  ),
                  if (widget.imageUrl.isNotEmpty) ...[
                    ListTile(
                      leading: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      title: Text('Remove Photo'),
                      onTap: () {
                        setState(() {
                          _image = null;
                          widget.select("");
                        });
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        optionDialog(context);
      },
      child: Container(
        width: size.width * 0.27,
        height: size.width * 0.38,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            if (widget.imageUrl.isNotEmpty) ...[
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  child: widget.imageUrl.isNotEmpty &&
                          widget.imageUrl.contains('https')
                      ? CachedNetworkImage(
                          imageUrl: widget.imageUrl,
                          placeholder: (context, url) => Loader(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        )
                      : Image.file(
                          File(widget.imageUrl),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ],
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VariationSize extends StatelessWidget {
  final String label;
  final bool selected;
  final Function(String) select;

  const VariationSize({
    Key? key,
    required this.label,
    required this.selected,
    required this.select,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(label);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: !selected ? Colors.transparent : Colors.green,
          border: Border.all(
            color: !selected ? Colors.black54 : Colors.green,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: selected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
