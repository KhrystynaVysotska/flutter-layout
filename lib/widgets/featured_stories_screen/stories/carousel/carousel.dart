import 'card/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class StoryPreviewCarousel extends StatelessWidget {
  const StoryPreviewCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: CAROUSEL_HEIGHT,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 13),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return StoryPreviewCard(
            imageId: index,
            title: FAKE_STORY_TITLE,
            description: FAKE_STORY_DESCRIPTION,
            author: FAKE_STORY_AUTHOR,
            timeDetails: FAKE_STORY_TIME_DETAILS,
            isStarred: true,
          );
        },
      ),
    );
  }
}
