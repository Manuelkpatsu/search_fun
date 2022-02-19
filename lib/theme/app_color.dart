import 'package:flutter/material.dart';

class AppColor {
  static const MaterialColor white = MaterialColor(
    0xffffffff,
    <int, Color>{
      50: Color(0xffe6e6e6),
      100: Color(0xffcccccc),
      200: Color(0xffb3b3b3),
      300: Color(0xff999999),
      400: Color(0xff808080),
      500: Color(0xff666666),
      600: Color(0xff4c4c4c),
      700: Color(0xff333333),
      800: Color(0xff191919),
      900: Color(0xff000000),
    },
  );

  static const Color primaryColor = Color(0xff51e1eb);
  static const Color deepPrimaryColor = Color(0xff6bc4ca);
  static const Color lightPrimaryColor = Color(0xff64cdd4);
  static const Color blurOneColor = Color.fromRGBO(179, 241, 244, 0.6);
  static const Color blurTwoColor = Color.fromRGBO(193, 198, 199, 0.402);
  static const Color lightGreyColor = Color(0xffe7e7e7);
  static const Color greyColor = Color(0xffa0a0a0);
  static const Color lightBlackColor = Color.fromRGBO(0, 0, 0, 0.39);
  static const Color deepBlackColor = Color.fromRGBO(0, 0, 0, 0.6);
  static const Color blackColor = Color(0xff000000);
  static const Color textColor = Color(0xff1e0303);
  static const Color greyTextColor = Color(0xff8A8A8A);
  static const Color dividerColor = Color.fromRGBO(0, 0, 0, 0.2);
  static const Color blurWhiteColor = Color.fromRGBO(255, 255, 255, 0.2);
  static const Color blurThreeColor = Color.fromRGBO(255, 255, 255, 0.072);
  static const Color blurFourColor = Color.fromRGBO(255, 255, 255, 0.402);
  static const Color borderColor = Color.fromRGBO(255, 255, 255, 0.3);
  static const Color navBarItemColor = Color(0xff14142B);
}
