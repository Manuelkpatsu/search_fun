import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class HomeTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabs;

  const HomeTabBar({
    Key? key,
    required this.tabController,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: TabBar(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        tabs: tabs,
        controller: tabController,
        labelColor: AppColor.white,
        isScrollable: true,
        unselectedLabelColor: AppColor.greyColor,
        unselectedLabelStyle: smallStyle,
        labelStyle: smallStyle.copyWith(fontWeight: FontWeight.bold),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.02, 0.98],
            colors: [AppColor.primaryColor, AppColor.deepPrimaryColor],
          ),
        ),
      ),
    );
  }
}
