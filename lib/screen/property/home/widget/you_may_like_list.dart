import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/home/you_may_like_tile.dart';

class YouMayLikeList extends StatelessWidget {
  final List<YouMayLikeTile> tiles;

  const YouMayLikeList({Key? key, required this.tiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          primary: true,
          itemCount: tiles.length,
          itemBuilder: (context, int index) {
            return tiles[index];
          }
      ),
    );
  }
}
