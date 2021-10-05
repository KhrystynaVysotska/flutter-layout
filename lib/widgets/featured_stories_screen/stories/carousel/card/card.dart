import 'card_story_image.dart';
import 'card_story_details.dart';
import 'card_story_preview.dart';
import 'package:flutter/material.dart';

class StoryPreviewCard extends StatelessWidget {
  const StoryPreviewCard({Key? key, required this.imageId}) : super(key: key);

  final int imageId;

  @override
  Widget build(BuildContext context) {
    Widget cardStoryText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[CardStoryPreview(), CardStoryDetails()],
    );

    Widget cardStoryImage = CardStoryImage(
      imageId: imageId,
    );

    Widget cardContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[cardStoryImage, cardStoryText],
    );

    return Card(
      elevation: 0,
      child: cardContent,
      semanticContainer: true,
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}
