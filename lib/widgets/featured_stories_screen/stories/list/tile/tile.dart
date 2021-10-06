import 'package:flutter/material.dart';
import 'tile_story_details.dart';
import 'tile_story_preview.dart';

class StoryPreviewListTile extends StatelessWidget {
  const StoryPreviewListTile(
      {Key? key,
      required this.imageId,
      required this.title,
      required this.description,
      required this.author,
      required this.timeDetails,
      required this.isStarred})
      : super(key: key);

  final int imageId;
  final String title;
  final String description;
  final String author;
  final String timeDetails;
  final bool isStarred;

  @override
  Widget build(BuildContext context) {
    Widget listTile = Column(
      children: <Widget>[
        TileStoryPreview(
          imageId: imageId,
          title: title,
          description: description,
        ),
        TileStoryDetails(
          author: author,
          timeDetails: timeDetails,
          isStarred: isStarred,
        )
      ],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      child: listTile,
    );
  }
}
