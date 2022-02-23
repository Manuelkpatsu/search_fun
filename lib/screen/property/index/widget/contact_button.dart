import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/gradient_button.dart';
import 'package:search_fun/theme/app_color.dart';

class ContactButton extends GradientButton {
  const ContactButton({
    Key? key,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          onPressed: onPressed,
          width: 46,
          borderRadius: 12,
          widget: const Icon(Icons.phone, color: AppColor.white, size: 17),
        );
}
