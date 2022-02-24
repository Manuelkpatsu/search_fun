import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/filter/widget/distance_text.dart';
import 'package:search_fun/screen/property/filter/widget/features_text.dart';
import 'package:search_fun/screen/property/filter/widget/filter_back_button.dart';
import 'package:search_fun/screen/property/filter/widget/multi_select_chip.dart';
import 'package:search_fun/screen/property/filter/widget/select_filter_text.dart';
import 'package:search_fun/theme/app_color.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> featuresList = [
    "Without Reservation",
    "Without Water",
    "Only Indoors",
    "Only Outdoors",
    "Free of Charge",
    "Pets Allowed",
    "Without Animal Attraction",
    "For Home",
    "Over 18years",
    "Events"
  ];
  List<String> selectedFeaturesList = [];
  double distance = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SelectFilterText(),
        centerTitle: true,
        leading: FilterBackButton(onTap: () => Navigator.of(context).pop()),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const FeaturesText(),
            const SizedBox(height: 10),
            MultiSelectChip(
              onSelectionChanged: (selectedList) {
                setState(() {
                  selectedFeaturesList = selectedList;
                });
              },
              featuresList: featuresList,
            ),
            const SizedBox(height: 16),
            const DistanceText(),
            const SizedBox(height: 10),
            Slider(
              min: 0,
              max: 100,
              divisions: 10,
              label: '${distance.round()} km',
              inactiveColor: AppColor.lightGreyColor,
              activeColor: AppColor.primaryColor,
              thumbColor: AppColor.primaryColor,
              value: distance,
              onChanged: (value) {
                setState(() {
                  distance = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
