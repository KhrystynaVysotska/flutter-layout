import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';
import 'package:flutter_layout/screens/featured_stories_screen.dart';

void main() => runApp(const MediumAppScreen());

class MediumAppScreen extends StatelessWidget {
  const MediumAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: APP_TITLE,
        debugShowCheckedModeBanner: false,
        home: FeaturedStoriesScreen());
  }
}
