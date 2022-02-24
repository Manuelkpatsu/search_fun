import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class DistanceText extends StatelessWidget {
  const DistanceText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '(Distance)',
      style: mediumStyle.copyWith(fontSize: 18, color: AppColor.blackColor),
    );
  }
}
