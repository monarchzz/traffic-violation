// ignore_for_file: unnecessary_this

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';

class CachedNetworkCircleAvatar extends StatelessWidget {
  const CachedNetworkCircleAvatar({
    super.key,
    this.imageUrl =
        'https://zyf8i1fxrou2h83snrgcgr3a-wpengine.netdna-ssl.com/wp-content/uploads/place-holder-avatar-600x600.jpg',
    this.size = 50,
    required this.hasCamera,
  });
  final String imageUrl;
  final double size;
  final bool hasCamera;

  @override
  Widget build(BuildContext context) {
    final newImageUrl = imageUrl.isEmpty
        ? 'https://zyf8i1fxrou2h83snrgcgr3a-wpengine.netdna-ssl.com/wp-content/uploads/place-holder-avatar-600x600.jpg'
        : imageUrl;

    return CachedNetworkImage(
      imageUrl: newImageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
        child: hasCamera
            ? const Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Palette.white,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Palette.silver,
                    child: Icon(
                      Icons.photo_camera,
                      size: 16,
                      color: Palette.white,
                    ),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
