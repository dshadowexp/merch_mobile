import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ExpandableCircleAvatarImage extends StatelessWidget {
  final String imageUrl;

  const ExpandableCircleAvatarImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  expand(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Container(
            width: 200,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
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
        expand(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: CircleAvatar(
          radius: size.width * 0.06,
          backgroundImage: CachedNetworkImageProvider(
            imageUrl,
          ),
          backgroundColor: Colors.grey.shade100,
        ),
      ),
    );
  }
}
