import 'package:flutter/material.dart';

class CustomAvatarCircle extends StatelessWidget {
   String imagePath;
  double size;
   CustomAvatarCircle({Key? key, required this.imagePath, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(size), // Image radius
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
