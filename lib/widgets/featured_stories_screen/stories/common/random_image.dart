import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class RandomImage extends StatelessWidget {
  RandomImage({
    Key? key,
    required this.imageId,
    required this.height,
    required this.width,
  }) : super(key: key);

  final int imageId;
  final int height;
  final int width;

  final imageIdRandomizer = Random();

  @override
  Widget build(BuildContext context) {
    final actualImageId = imageId <= NETWORK_IMAGES_MAX_ID
        ? imageId
        : imageIdRandomizer.nextInt(NETWORK_IMAGES_MAX_ID);

    return Image.network(
      '$NETWORK_IMAGES_URL/id/$imageId/$width/$height',
      fit: BoxFit.contain,
    );
  }
}
