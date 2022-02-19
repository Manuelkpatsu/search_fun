import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String image;
  final double radius;
  final double? top;
  final double? right;
  final double? left;
  final double? bottom;

  const RoundedImage({
    Key? key,
    required this.image,
    required this.radius,
    this.bottom,
    this.left,
    this.right,
    this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: radius,
      ),
    );
  }
}
