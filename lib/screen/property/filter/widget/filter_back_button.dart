import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/app_icon_button.dart';
import 'package:search_fun/theme/app_color.dart';

class FilterBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const FilterBackButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      onPressed: onTap,
      child: Ink(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: AppColor.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1, color: AppColor.borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 4,
              blurRadius: 1,
              offset: const Offset(1, 2),
            ),
          ]
        ),
        child: const Icon(Icons.chevron_left_rounded, color: Colors.black),
      ),
    );
  }
}
