import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SearchItemName extends StatelessWidget {
  final String name;

  const SearchItemName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: mediumStyle.copyWith(
        color: AppColor.blackColor,
        fontSize: 18
      ),
    );
  }
}
