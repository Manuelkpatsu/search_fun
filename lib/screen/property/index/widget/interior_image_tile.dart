import 'package:flutter/material.dart';

class InteriorImageTile extends StatelessWidget {
  final String image;

  const InteriorImageTile({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 110,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}

