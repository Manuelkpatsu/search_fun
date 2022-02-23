import 'package:flutter/material.dart';
import 'package:search_fun/screen/widget/gradient_button.dart';
import 'package:search_fun/theme/styles.dart';

class GetConnectedButton extends GradientButton {
  GetConnectedButton({
    Key? key,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          onPressed: onPressed,
          height: 26,
          width: 110,
          borderRadius: 5,
          widget: Text(
            'Get Connected',
            style: buttonStyle.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.normal,
            ),
          ),
        );
}
