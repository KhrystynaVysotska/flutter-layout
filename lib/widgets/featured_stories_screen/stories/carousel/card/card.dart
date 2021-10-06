import 'card_story_image.dart';
import 'card_story_details.dart';
import 'card_story_preview.dart';
import 'package:flutter/material.dart';

class StoryPreviewCard extends StatelessWidget {
  const StoryPreviewCard({
    Key? key,
    required this.imageId,
    required this.title,
    required this.description,
    required this.author,
    required this.timeDetails,
    required this.isStarred,
  }) : super(key: key);

  final int imageId;
  final String title;
  final String author;
  final bool isStarred;
  final String description;
  final String timeDetails;

  @override
  Widget build(BuildContext context) {
    Widget cardStoryText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CardStoryPreview(
          title: title,
          description: description,
        ),
        CardStoryDetails(
          author: author,
          timeDetails: timeDetails,
          isStarred: isStarred,
        )
      ],
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
