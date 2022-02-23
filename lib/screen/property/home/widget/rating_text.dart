import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class RatingText extends StatelessWidget {
  final double rating;

  const RatingText({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      rating.toStringAsFixed(1),
      style: smallStyle.copyWith(
        color: AppColor.white,
        fontSize: 9,
      ),
    );
  }
}
