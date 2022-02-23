import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';

import '../book_mark_tile.dart';

class BookMarkList extends StatelessWidget {
  final List<BookMarkTile> tiles;

  const BookMarkList({Key? key, required this.tiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tiles.length,
      itemBuilder: (context, int index) {
        return tiles[index];
      },
      separatorBuilder: (context, int index) => const Divider(
        height: 0,
        color: AppColor.dividerColor,
      ),
    );
  }
}
