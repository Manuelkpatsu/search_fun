import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/home/property_tile.dart';

class PropertyList extends StatelessWidget {
  final List<PropertyTile> tiles;

  const PropertyList({Key? key, required this.tiles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(left: 16),
      scrollDirection: Axis.horizontal,
      primary: true,
      itemCount: tiles.length,
        itemBuilder: (context, int index) {
          return tiles[index];
        }
    );
  }
}
