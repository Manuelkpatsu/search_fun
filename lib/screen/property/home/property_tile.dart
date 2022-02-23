import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/home/widget/property_tile_name.dart';
import 'package:search_fun/theme/app_color.dart';

import 'widget/detail_button.dart';
import 'widget/property_address.dart';
import 'widget/property_distance.dart';

class PropertyTile extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final double distance;
  final VoidCallback? onPressed;

  const PropertyTile({
    Key? key,
    required this.image,
    required this.name,
    required this.address,
    required this.distance,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
      decoration: BoxDecoration(
        color: const Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(AppColor.blackColor, BlendMode.softLight)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const RadialGradient(
                radius: 1,
                focalRadius: 1.4,
                colors: [AppColor.blurTwoColor, AppColor.blurOneColor]
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PropertyTileName(name: name),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: AppColor.white, size: 14),
                    PropertyAddress(address: address),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PropertyDistance(distance: distance),
                    DetailButton(onPressed: onPressed),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
