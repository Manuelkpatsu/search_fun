import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SearchResultsText extends StatelessWidget {
  const SearchResultsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Search Results',
        style: bigStyle.copyWith(
          color: AppColor.blackColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
