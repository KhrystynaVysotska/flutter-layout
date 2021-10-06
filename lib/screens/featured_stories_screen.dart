import 'package:flutter/material.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/app_bar.dart';
import 'package:flutter_layout/widgets/featured_stories_screen/stories/list/list.dart';

class FeaturedStoriesScreen extends StatelessWidget {
  const FeaturedStoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: FeaturedStoriesScreenAppBar(),
      body: StoryPreviewList(),
    ));
  }
}
