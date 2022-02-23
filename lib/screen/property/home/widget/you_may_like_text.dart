import 'package:flutter/material.dart';
import 'package:search_fun/theme/styles.dart';

class YouMayLikeText extends StatelessWidget {
  const YouMayLikeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'You may like',
        style: mediumStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
