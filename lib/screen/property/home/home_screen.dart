import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/home/suggested_tile.dart';
import 'package:search_fun/screen/property/home/widget/property_list.dart';
import 'package:search_fun/screen/property/home/widget/suggested_for_you_text.dart';
import 'package:search_fun/screen/property/home/widget/suggested_list.dart';
import 'package:search_fun/screen/property/home/widget/you_may_like_list.dart';
import 'package:search_fun/screen/property/home/you_may_like_tile.dart';
import 'package:search_fun/screen/property/index/property_index_screen.dart';

import 'property_tile.dart';
import 'widget/featured_places_text.dart';
import 'widget/home_tab_bar.dart';
import 'widget/more_button.dart';
import 'widget/sub_title_text.dart';
import 'widget/welcome_text.dart';
import 'widget/you_may_like_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      const Text('All'),
      const Text('Hotels'),
      const Text('Apartments'),
      const Text('Shops'),
      const Text('Pet House'),
    ];

    final List<PropertyTile> _propertyTiles = [
      PropertyTile(
        name: 'Ubersetzte Villa',
        image: 'assets/properties/property-1.jpg',
        address: '138 Ring Street, Road',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        distance: 5.1,
      ),
      PropertyTile(
        name: 'Ubersetzte Villa',
        image: 'assets/properties/property-2.jpg',
        address: '138 Ring Street, Road',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        distance: 5.1,
      ),
      PropertyTile(
        name: 'Ubersetzte Villa',
        image: 'assets/properties/property-3.jpg',
        address: '138 Ring Street, Road',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        distance: 5.1,
      ),
    ];

    final List<YouMayLikeTile> _youMayLikeTiles = [
      YouMayLikeTile(
        name: 'Ubersetzte Villa',
        image: 'assets/properties/property-4.jpg',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        rating: 3.9,
      ),
      YouMayLikeTile(
        name: 'Ubersetzte Apartment',
        image: 'assets/properties/property-5.jpg',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        rating: 4.5,
      ),
      YouMayLikeTile(
        name: 'Ubersetzte Hotel',
        image: 'assets/properties/property-6.jpg',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        rating: 5.0,
      ),
    ];

    final List<SuggestedTile> _suggestedTiles = [
      SuggestedTile(
        name: 'Ubersetzte Hotel',
        image: 'assets/properties/property-7.jpg',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        rating: 5.0,
      ),
      SuggestedTile(
        name: 'Ubersetzte Villa',
        image: 'assets/properties/property-4.jpg',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        rating: 3.1,
      ),
      SuggestedTile(
        name: 'Ubersetzte Appartment',
        image: 'assets/properties/property-2.jpg',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const PropertyIndexScreen()),
          );
        },
        rating: 4.1,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WelcomeText(),
            SubTitleText(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 10),
            const FeaturedPlacesText(),
            const SizedBox(height: 20),
            HomeTabBar(tabs: _tabs, tabController: _tabController),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  PropertyList(tiles: _propertyTiles),
                  PropertyList(tiles: _propertyTiles),
                  PropertyList(tiles: _propertyTiles),
                  PropertyList(tiles: _propertyTiles),
                  PropertyList(tiles: _propertyTiles),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const YouMayLikeText(), MoreButton(onPressed: () {})],
            ),
            const SizedBox(height: 10),
            YouMayLikeList(tiles: _youMayLikeTiles),
            const SizedBox(height: 20),
            const SuggestedForYouText(),
            const SizedBox(height: 10),
            SuggestedList(tiles: _suggestedTiles),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
