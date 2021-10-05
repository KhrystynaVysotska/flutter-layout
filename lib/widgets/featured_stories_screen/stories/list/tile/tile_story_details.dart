import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/icons.dart';
import 'package:flutter_layout/assets/constants.dart';

class TileStoryDetails extends StatelessWidget {
  const TileStoryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget storyDetailsAuthor = const Padding(
      padding: EdgeInsets.only(bottom: 1),
      child: Text(FAKE_STORY_AUTHOR),
    );

    Widget storyDetailsTime = Row(
      children: <Widget>[
        Text(
          FAKE_STORY_TIME_DETAILS,
          style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.6)),
        ),
        starIcon
      ],
    );

    Widget storyDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[storyDetailsAuthor, storyDetailsTime],
    );

    Widget saveStory = Padding(
      padding: const EdgeInsets.only(right: 10),
      child: bookmarkIcon,
    );

    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[storyDetails, saveStory],
      ),
    );
  }
}
