import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/search/search_tile.dart';
import 'package:search_fun/theme/app_color.dart';

class SearchList extends StatelessWidget {
  final List<SearchTile> tiles;

  const SearchList({Key? key, required this.tiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: true,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
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
