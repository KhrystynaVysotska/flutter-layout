import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class TileStoryImage extends StatelessWidget {
  const TileStoryImage({Key? key, required this.imageId}) : super(key: key);

  final int imageId;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      '$NETWORK_IMAGES_URL/id/$imageId/$LIST_ITEM_IMAGE_WIDTH/$LIST_ITEM_IMAGE_HEIGHT',
      fit: BoxFit.contain,
    );
  }
}
