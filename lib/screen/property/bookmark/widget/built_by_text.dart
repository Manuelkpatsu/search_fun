import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class BuiltByText extends StatelessWidget {
  final String developer;

  const BuiltByText({Key? key, required this.developer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '(By $developer)',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: smallStyle.copyWith(color: AppColor.lightBlackColor),
    );
  }
}
