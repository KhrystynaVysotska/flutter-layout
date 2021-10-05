import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class CardStoryPreview extends StatelessWidget {
  const CardStoryPreview({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

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

    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[storyPreviewTitle, storyPreviewDescription],
      ),
    );
  }
}
