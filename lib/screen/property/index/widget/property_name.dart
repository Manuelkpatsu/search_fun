import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class PropertyName extends StatelessWidget {
  final String name;

  const PropertyName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: bigStyle.copyWith(color: AppColor.blackColor, fontWeight: FontWeight.bold),
    );
  }
}
