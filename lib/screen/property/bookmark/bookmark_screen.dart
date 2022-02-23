import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/bookmark/widget/menu_button.dart';
import 'package:search_fun/screen/property/bookmark/widget/title_text.dart';
import 'package:search_fun/screen/property/index/property_index_screen.dart';

import 'book_mark_tile.dart';
import 'widget/book_mark_list.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<BookMarkTile> _bookMarkTiles = [
      BookMarkTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        thumbnail: 'assets/properties/property-1.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      BookMarkTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        thumbnail: 'assets/properties/property-4.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      BookMarkTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        thumbnail: 'assets/properties/property-6.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      BookMarkTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        thumbnail: 'assets/properties/property-2.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      BookMarkTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        thumbnail: 'assets/properties/property-7.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const TitleText(),
        centerTitle: true,
        actions: [MenuButton(onPressed: () {})],
      ),
      body: BookMarkList(tiles: _bookMarkTiles),
    );
  }
}
