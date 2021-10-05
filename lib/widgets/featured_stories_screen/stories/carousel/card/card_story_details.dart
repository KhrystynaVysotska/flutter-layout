import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/icons.dart';
import 'package:flutter_layout/assets/constants.dart';

class CardStoryDetails extends StatelessWidget {
  const CardStoryDetails({
    Key? key,
    required this.author,
    required this.timeDetails,
    required this.isStarred,
  }) : super(key: key);

  final String author;
  final bool isStarred;
  final String timeDetails;

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

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[storyDetailsAuthor, storyDetailsTime],
      ),
    );
  }
}
