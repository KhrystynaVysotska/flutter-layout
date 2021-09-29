import 'package:flutter/material.dart';
import 'package:flutter_layout/assets/constants.dart';

class CardStoryImage extends StatelessWidget {
  const CardStoryImage({Key? key, required this.imageId}) : super(key: key);

  final int imageId;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      '$NETWORK_IMAGES_URL/id/$imageId/$CARD_IMAGE_WIDTH/$CARD_IMAGE_HEIGHT',
      fit: BoxFit.contain,
    );
  }
}
