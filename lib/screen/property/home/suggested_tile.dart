import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/home/you_may_like_tile.dart';

class SuggestedTile extends YouMayLikeTile {
  const SuggestedTile({
    Key? key,
    required String image,
    required String name,
    required double rating,
    required VoidCallback? onPressed,
  }) : super(
          key: key,
          image: image,
          name: name,
          rating: rating,
          onPressed: onPressed,
        );
}
