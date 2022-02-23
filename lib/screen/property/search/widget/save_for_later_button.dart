import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class SaveForLaterButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SaveForLaterButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        textStyle: buttonStyle.copyWith(fontSize: 10, fontWeight: FontWeight.normal),
        primary: AppColor.white,
        onPrimary: AppColor.deepBlueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: AppColor.deepBlueColor, width: 1)
        ),
        minimumSize: const Size(110, 26)
      ),
      child: const Text('Save For Later'),
    );
  }
}
