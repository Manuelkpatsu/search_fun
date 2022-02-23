import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class PropertyDescription extends StatelessWidget {
  final String description;

  const PropertyDescription({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      trimLines: 4,
      colorClickableText: AppColor.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' read more',
      trimExpandedText: ' show less',
      style: smallStyle.copyWith(color: AppColor.blackColor),
    );
  }
}
