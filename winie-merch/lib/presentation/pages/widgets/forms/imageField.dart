import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageField extends StatefulWidget {
  final setIdentityImage;
  final String? imageLink;

  const ImageField({
    Key? key,
    required this.setIdentityImage,
    required this.imageLink,
  }) : super(key: key);

  @override
  _ImageFieldState createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  File? _image;
  final _imagePicker = ImagePicker();

  Future _changeImage(ImageSource source) async {
    try {
      final image = await _imagePicker.pickImage(source: source);

      if (image != null) {
        _image = File(image.path);
        widget.setIdentityImage(image.path);
        setState(() {});
      }
    } catch (e) {}
  }

  void _getImageTapped() {
    _showPicker(context);
  }

  void _showPicker(context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Image options",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.photo_camera,
                    color: Colors.teal,
                  ),
                  title: Text('Camera'),
                  onTap: () {
                    _changeImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.photo_library,
                    color: Colors.teal,
                  ),
                  title: Text('Photo Library'),
                  onTap: () {
                    _changeImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                _getImageTapped();
              },
              child: Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      spreadRadius: 1,
                      blurRadius: 20,
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: widget.imageLink == null
                      ? Center(
                          child: Icon(
                            Icons.sentiment_very_satisfied,
                            size: size.width * 0.15,
                            color: Colors.black38,
                          ),
                        )
                      : widget.imageLink!.contains('https')
                          ? CachedNetworkImage(
                              imageUrl: widget.imageLink!,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) => Center(
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.grey.shade200,
                                    ),
                                    value: downloadProgress.progress,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              _image!,
                              fit: BoxFit.contain,
                            ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
