import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Check for latest properties',
      style: smallStyle.copyWith(fontSize: 14, color: AppColor.subTitleColor),
    );
  }
}
