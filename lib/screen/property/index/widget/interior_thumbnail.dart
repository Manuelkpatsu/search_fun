import 'package:flutter/material.dart';

class InteriorThumbnail extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;

  const InteriorThumbnail({Key? key, required this.image, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          height: 100,
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.softLight,
        ),
      ),
    );
  }
}
