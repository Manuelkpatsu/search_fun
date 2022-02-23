import 'package:flutter/material.dart';
import 'package:search_fun/theme/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello Uberstzte!!',
      style: hugeStyle.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
