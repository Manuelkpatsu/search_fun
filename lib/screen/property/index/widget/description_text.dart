import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Description',
      style: mediumStyle.copyWith(
        color: AppColor.blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
