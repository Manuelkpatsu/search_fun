import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/gradient_button.dart';
import 'package:search_fun/theme/styles.dart';

class BookNowButton extends GradientButton {
  const BookNowButton({
    Key? key,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          onPressed: onPressed,
          borderRadius: 12,
          widget: const Text(
            'Book Now',
            style: buttonStyle,
          ),
        );
}
