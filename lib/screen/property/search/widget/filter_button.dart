import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/app_icon_button.dart';
import 'package:search_fun/theme/app_color.dart';

class FilterButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const FilterButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
        onPressed: onPressed,
        child: Container(
          height: 40,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColor.faintColor, width: 1)
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Icon(Icons.filter_alt_outlined, color: AppColor.blackColor),
          ),
        ),
    );
  }
}
