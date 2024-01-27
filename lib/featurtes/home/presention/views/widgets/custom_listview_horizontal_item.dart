import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewHorizobtalItem extends StatelessWidget {
  const CustomListViewHorizobtalItem({
    Key? key,
    required this.imageUrl, required this.tagg,

  }) : super(key: key);

  final String imageUrl;
  final String tagg;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Hero(
        tag: tagg,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.white, // Set the color of the border here
              width: 2.0, // Set the width of the border here
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CachedNetworkImage(
              placeholder: (context, url) => Image.asset(
                'assets/images/loadanimation.gif',
                fit: BoxFit.fill,
              ),
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error_sharp),
            ),
          ),
        ),
      ),
    );
  }
}
