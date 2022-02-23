import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class NameText extends StatelessWidget {
  final String name;

  const NameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: smallStyle.copyWith(
        color: AppColor.white,
        fontWeight: FontWeight.w600,
        fontSize: 8,
      ),
    );
  }
}
