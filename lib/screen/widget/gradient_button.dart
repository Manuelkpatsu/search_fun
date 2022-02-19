import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String action;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
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
        borderRadius: BorderRadius.circular(17),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          primary: Colors.transparent,
        ),
        child: Text(action, style: buttonStyle),
      ),
    );
  }
}
