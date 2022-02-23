import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class PropertyDistance extends StatelessWidget {
  final double distance;

  const PropertyDistance({Key? key, required this.distance}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${distance.toStringAsFixed(1)} km',
      style: smallStyle.copyWith(
        color: AppColor.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
