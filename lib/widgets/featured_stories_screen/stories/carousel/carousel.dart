import 'dart:math';
import 'card/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class StoryPreviewCarousel extends StatelessWidget {
  const StoryPreviewCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageIdRandomizer = Random();

    return Container(
        color: Colors.black,
        height: CAROUSEL_HEIGHT,
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final imageId = index <= NETWORK_IMAGES_MAX_ID
                  ? index
                  : imageIdRandomizer.nextInt(NETWORK_IMAGES_MAX_ID);
              return StoryPreviewCard(imageId: imageId);
            }));
  }
}
