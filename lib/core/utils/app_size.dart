import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  final double widthFactor;
  final double heightFactor;

  const CustomSizedBox({
    Key? key,
    // Default width
    this.widthFactor = 0.0,
    // Default height
    this.heightFactor = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      // Set width as a factor of screen width
      width: screenWidth * widthFactor,
      // Set height as a factor of screen height
      height: screenHeight * heightFactor,
    );
  }
}
