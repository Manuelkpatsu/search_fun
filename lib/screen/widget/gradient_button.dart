import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;

  const GradientButton({
    Key? key,
    required this.onPressed,
    this.height = 45,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 17,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.02, 0.98],
          colors: [
            AppColor.primaryColor,
            AppColor.deepPrimaryColor,
          ],
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          primary: Colors.transparent,
        ),
        child: widget,
      ),
    );
  }
}
