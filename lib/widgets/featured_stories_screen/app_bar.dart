import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/icons.dart';
import 'package:flutter_layout/assets/constants.dart';

class FeaturedStoriesScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const FeaturedStoriesScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget pageTitle = const Padding(
      padding: EdgeInsets.only(top: 50),
      child: Text(
        'Featured stories',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
      ),
    );

    Widget arrowBack = Padding(
      padding: const EdgeInsets.only(top: 50),
      child: arrowBackIcon,
    );

    Widget followButton = Padding(
      padding: const EdgeInsets.only(right: 20, top: 70),
      child: Text(
        "Follow",
        style: TextStyle(color: Colors.green.shade900, fontSize: 15),
      ),
    );

    return AppBar(
      elevation: 1.5,
      title: pageTitle,
      leading: arrowBack,
      toolbarHeight: APP_BAR_HEIGHT,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      actions: <Widget>[followButton],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(APP_BAR_HEIGHT);
}
