import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/list/tile/tile.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/carousel/carousel.dart';

class StoryPreviewList extends StatelessWidget {
  const StoryPreviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageIdRandomizer = Random();

    return ListView.builder(itemBuilder: (context, index) {
      if (index == 0) return const StoryPreviewCarousel();

      if (index.isEven) return const Divider();

      final actualIndex = index ~/ 2;

      final imageId = actualIndex <= NETWORK_IMAGES_MAX_ID
          ? actualIndex
          : imageIdRandomizer.nextInt(NETWORK_IMAGES_MAX_ID);

      return StoryPreviewListTile(imageId: imageId);
    });
  }
}
