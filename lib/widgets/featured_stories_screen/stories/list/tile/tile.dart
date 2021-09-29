import 'package:flutter/material.dart';
import 'tile_story_details.dart';
import 'tile_story_preview.dart';

class StoryPreviewListTile extends StatelessWidget {
  const StoryPreviewListTile({Key? key, required this.imageId})
      : super(key: key);

  final int imageId;

  @override
  Widget build(BuildContext context) {
    Widget listTile = Column(
      children: <Widget>[
        TileStoryPreview(imageId: imageId),
        const TileStoryDetails()
      ],
    );

    return Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
        child: listTile);
  }
}
