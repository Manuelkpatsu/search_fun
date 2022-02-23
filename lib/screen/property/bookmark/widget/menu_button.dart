import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/app_icon_button.dart';
import 'package:search_fun/theme/app_color.dart';

class MenuButton extends AppIconButton {
  const MenuButton({
    Key? key,
    required VoidCallback? onPressed,
  }) : super(
          key: key,
          child: const Icon(Icons.more_vert_outlined, color: AppColor.blackColor),
          onPressed: onPressed,
        );
}
