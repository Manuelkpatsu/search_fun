import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SearchItemContactNumber extends StatelessWidget {
  final String phoneNumber;

  const SearchItemContactNumber({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneNumber,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: smallStyle.copyWith(color: AppColor.lightBlackColor),
    );
  }
}
