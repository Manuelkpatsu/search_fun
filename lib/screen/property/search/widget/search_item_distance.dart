import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SearchItemDistance extends StatelessWidget {
  final double distance;

  const SearchItemDistance({Key? key, required this.distance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${distance.toStringAsFixed(1)} km',
      style: smallStyle.copyWith(color: AppColor.faintColor),
    );
  }
}
