import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/common/random_image.dart';

class TileStoryImage extends StatelessWidget {
  const TileStoryImage({Key? key, required this.imageId}) : super(key: key);

  final int imageId;

  @override
  Widget build(BuildContext context) {
    return RandomImage(
      imageId: imageId,
      height: LIST_ITEM_IMAGE_HEIGHT,
      width: LIST_ITEM_IMAGE_WIDTH,
    );
  }
}
