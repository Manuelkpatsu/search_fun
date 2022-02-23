import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class PropertyTileName extends StatelessWidget {
  final String name;

  const PropertyTileName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: normalStyle.copyWith(
        color: AppColor.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
