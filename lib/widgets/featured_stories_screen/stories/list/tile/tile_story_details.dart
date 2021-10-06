import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/icons.dart';

class TileStoryDetails extends StatelessWidget {
  const TileStoryDetails({
    Key? key,
    required this.author,
    required this.timeDetails,
    required this.isStarred,
  }) : super(key: key);

  final String author;
  final String timeDetails;
  final bool isStarred;

  @override
  Widget build(BuildContext context) {
    Widget storyDetailsAuthor = Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Text(author),
    );

    Widget storyDetailsTime = Row(
      children: <Widget>[
        Text(
          timeDetails,
          style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.6)),
        ),
        if (isStarred) starIcon
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
