import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: AppColor.primaryColor,
      fontFamily: 'OpenSans',
      appBarTheme: const AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.blackColor),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      primarySwatch: AppColor.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: AppColor.primaryColor,
          elevation: 0,
          onPrimary: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          minimumSize: const Size(double.infinity, 45),
        ),
      ),
    );
  }
}
