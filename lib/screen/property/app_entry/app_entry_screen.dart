import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/bookmark/bookmark_screen.dart';
import 'package:search_fun/screen/property/home/home_screen.dart';
import 'package:search_fun/screen/property/search/search_screen.dart';
import 'package:search_fun/screen/property/settings/settings_screen.dart';
import 'package:search_fun/theme/app_color.dart';

class AppEntryScreen extends StatefulWidget {
  const AppEntryScreen({Key? key}) : super(key: key);

  @override
  _AppEntryScreenState createState() => _AppEntryScreenState();
}

class _AppEntryScreenState extends State<AppEntryScreen> {
  int _currentPageIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const BookmarkScreen(),
    const SettingsScreen()
  ];
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.bookmark_border_outlined),
      label: 'Bookmark',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      label: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentPageIndex,
          children: _screens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.deepPrimaryColor,
        unselectedItemColor: AppColor.navBarItemColor,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: _navBarItems,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.5,
      ),
    );
  }
}
