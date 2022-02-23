import 'package:flutter/material.dart';

class PropertyThumbnail extends StatelessWidget {
  final String thumbnail;

  const PropertyThumbnail({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(thumbnail),
          fit: BoxFit.cover,// -> 02
        ),
      ),
    );
  }
}
