import 'package:flutter/material.dart';

import '../assets_path.dart';
import '../responsive/responsive_wrapper.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: ResponsiveWidget.isSmallScreen(context) ? 155 : 205,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: ResponsiveWidget.isSmallScreen(context) ? 150 : 200,
        backgroundImage: Image.asset(
          profileImagePath,

          fit: BoxFit.cover,
        ).image,
      ),
    );
  }
}
