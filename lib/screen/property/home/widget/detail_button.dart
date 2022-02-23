import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class DetailButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const DetailButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        primary: AppColor.blurFourColor,
        onPrimary: AppColor.white,
        minimumSize: const Size(67, 22),
        textStyle: smallStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w600),
      ),
      child: const Text('Detail'),
    );
  }
}
