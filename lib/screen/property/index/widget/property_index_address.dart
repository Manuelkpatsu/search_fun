import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class PropertyIndexAddress extends StatelessWidget {
  final String address;

  const PropertyIndexAddress({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      style: smallStyle.copyWith(color: AppColor.blackColor),
    );
  }
}
