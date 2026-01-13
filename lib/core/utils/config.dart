import 'package:flutter/material.dart';

class AppConfig {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHight;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHight = mediaQueryData!.size.height;
  }

  static double? get widthSize {
    return screenWidth;
  }

  static double? get hightSize {
    return screenHight;
  }

  static const spaceSmall = SizedBox(height: 25);
  static final spaceMedium = SizedBox(height: screenHight! * 0.05);
  static final spaceBig = SizedBox(height: screenHight! * 0.08);
}
