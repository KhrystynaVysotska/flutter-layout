import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/list/tile/tile.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/carousel/carousel.dart';

class StoryPreviewList extends StatelessWidget {
  const StoryPreviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      if (index == 0) return const StoryPreviewCarousel();

      if (index.isEven) return const Divider();

      final actualIndex = index ~/ 2;

      return StoryPreviewListTile(
        imageId: actualIndex,
        title: FAKE_STORY_TITLE,
        description: FAKE_STORY_DESCRIPTION,
        author: FAKE_STORY_AUTHOR,
        timeDetails: FAKE_STORY_TIME_DETAILS,
        isStarred: true,
      );
    });
  }
}
