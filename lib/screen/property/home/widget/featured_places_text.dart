import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class FeaturedPlacesText extends StatelessWidget {
  const FeaturedPlacesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Featured Places',
        style: bigStyle.copyWith(color: AppColor.blackColor),
      ),
    );
  }
}
