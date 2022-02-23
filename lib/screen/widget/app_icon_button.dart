import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const AppIconButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: child,
      splashRadius: 20,
    );
  }
}
