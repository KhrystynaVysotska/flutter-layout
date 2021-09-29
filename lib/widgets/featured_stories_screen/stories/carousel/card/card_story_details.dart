import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/icons.dart';
import 'package:flutter_layout/assets/constants.dart';

class CardStoryDetails extends StatelessWidget {
  const CardStoryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget storyDetailsAuthor = Container(
        padding: const EdgeInsets.only(bottom: 1),
        child: const Text(FAKE_STORY_AUTHOR));

    Widget storyDetailsTime = Row(
      children: <Widget>[
        Text(
          FAKE_STORY_TIME_DETAILS,
          style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.6)),
        ),
        starIcon
      ],
    );

    return Container(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[storyDetailsAuthor, storyDetailsTime]));
  }
}
