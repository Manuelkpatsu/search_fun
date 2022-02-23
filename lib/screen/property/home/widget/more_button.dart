import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/app_icon_button.dart';
import 'package:search_fun/theme/app_color.dart';

class MoreButton extends AppIconButton {
  const MoreButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          child: const Icon(
            Icons.more_horiz_outlined,
            color: AppColor.textColor,
          ),
          onPressed: onPressed,
        );
}
