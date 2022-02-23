import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';

import 'widget/name_text.dart';
import 'widget/rating_text.dart';

class YouMayLikeTile extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final VoidCallback? onPressed;

  const YouMayLikeTile({
    Key? key,
    required this.image,
    required this.name,
    required this.rating,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 16),
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xffc4c4c4),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(AppColor.blackColor, BlendMode.softLight)
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const RadialGradient(
                        radius: 1,
                        focalRadius: 1.4,
                        colors: [AppColor.blurTwoColor, AppColor.blurOneColor]
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameText(name: name),
                    Row(
                      children: [
                        const Icon(Icons.star_outlined, color: AppColor.starColor, size: 9),
                        RatingText(rating: rating),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
