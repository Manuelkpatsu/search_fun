import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/index/property_index_screen.dart';
import 'package:search_fun/screen/property/search/widget/filter_button.dart';
import 'package:search_fun/screen/property/search/widget/search_list.dart';
import 'package:search_fun/screen/property/search/widget/search_results_text.dart';
import 'package:search_fun/screen/property/search/widget/search_text_field.dart';

import 'search_tile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final List<SearchTile> _searchTiles = [
      SearchTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        distance: 5.1,
        thumbnail: 'assets/properties/property-1.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      SearchTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        distance: 5.1,
        thumbnail: 'assets/properties/property-4.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      SearchTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        distance: 5.1,
        thumbnail: 'assets/properties/property-6.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      SearchTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        distance: 5.1,
        thumbnail: 'assets/properties/property-2.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
      SearchTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        name: 'Margalla Hills',
        distance: 5.1,
        thumbnail: 'assets/properties/property-7.jpg',
        address: '138 Ring Street, Road',
        phoneNumber: '092-123456789',
        developer: '(Uberstzte Villas Ltd.)',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SearchTextField(controller: _searchController),
        actions: [FilterButton(onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const SearchResultsText(),
            const SizedBox(height: 10),
            SearchList(tiles: _searchTiles)
          ],
        ),
      ),
    );
  }
}
