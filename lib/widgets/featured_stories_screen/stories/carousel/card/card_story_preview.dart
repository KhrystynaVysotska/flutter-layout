import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class CardStoryPreview extends StatelessWidget {
  const CardStoryPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget storyPreviewTitle = Container(
        padding: const EdgeInsets.only(bottom: 1),
        child: const Text(
          FAKE_STORY_TITLE,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
        ));

    Widget storyPreviewDescription = Text(FAKE_STORY_DESCRIPTION,
        style: TextStyle(color: Colors.black.withOpacity(0.6)));

    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[storyPreviewTitle, storyPreviewDescription]),
    );
  }
}
