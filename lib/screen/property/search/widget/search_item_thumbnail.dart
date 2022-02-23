import 'package:flutter/material.dart';

class SearchItemThumbnail extends StatelessWidget {
  final String image;
  
  const SearchItemThumbnail({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        image,
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
