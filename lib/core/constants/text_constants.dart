import 'package:flutter/material.dart';

class TextStyles {
  // Headline Style (Semibold)
  static const TextStyle headline1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18.0,
    fontWeight: FontWeight.w500, // Changed to semibold (w600)
    color: Color(0xff222222),
  );

  // Subheadline Style
  static const TextStyle subheadline = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12.0,
    fontWeight: FontWeight.w600, // semibold (w600)
    color: Color(0xff222222),
  );

  // Body Text Style
  static const TextStyle bodyText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12.0,
    color: Color(0xff222222),
  );
  // search Text Style
  static TextStyle searchText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12.0,
    color: Color(0xff222222).withOpacity(.5),
  );

  // Caption Text Style
  static const TextStyle caption = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10.0,
    fontWeight: FontWeight.w300, // Light
    color: Colors.grey,
  );

  // Card Title Text Style
  static const TextStyle cardTitle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16.0,
    fontWeight: FontWeight.w500, // semibold (w600)
  );

  // Custom Method for Dynamic Font Size (Optional)
  static TextStyle dynamicTextStyle({
    required BuildContext context,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: MediaQuery.of(context).size.width * (fontSize / 100),
      fontWeight: fontWeight,
      color: color,
    );
  }
}
