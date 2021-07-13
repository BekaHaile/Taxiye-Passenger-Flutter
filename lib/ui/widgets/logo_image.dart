import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    Key? key,
    this.width = 75.0,
    this.height = 25.0,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    double width = this.width;
    double height = this.height;
    if (width / height != 3) {
      if (width == 75) {
        width = height * 3;
      } else if (height == 25) {
        height = width / 3;
      }
    }
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
