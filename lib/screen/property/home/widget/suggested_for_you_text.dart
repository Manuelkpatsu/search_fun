import 'package:flutter/material.dart';
import 'package:search_fun/theme/styles.dart';

class SuggestedForYouText extends StatelessWidget {
  const SuggestedForYouText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Suggested for you',
        style: mediumStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
