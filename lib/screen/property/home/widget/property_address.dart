import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class PropertyAddress extends StatelessWidget {
  final String address;

  const PropertyAddress({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: smallStyle.copyWith(
        color: AppColor.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
