import 'package:flutter/material.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/list/tile/tile_story_image.dart';

class TileStoryPreview extends StatelessWidget {
  const TileStoryPreview({
    Key? key,
    required this.imageId,
    required this.title,
    required this.description,
  }) : super(key: key);

  final int imageId;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    Widget storyPreviewTitle = Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
      ),
    );

    Widget storyPreviewDescription = Text(
      description,
      style: TextStyle(color: Colors.black.withOpacity(0.6)),
    );

    Widget storyPreviewImage = TileStoryImage(imageId: imageId);

    Widget storyPreviewText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[storyPreviewTitle, storyPreviewDescription],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[storyPreviewText, storyPreviewImage],
    );
  }
}
