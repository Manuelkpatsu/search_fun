import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/search/widget/developed_by_text.dart';
import 'package:search_fun/screen/property/search/widget/get_connected_button.dart';
import 'package:search_fun/screen/property/search/widget/save_for_later_button.dart';
import 'package:search_fun/screen/property/search/widget/search_item_address.dart';
import 'package:search_fun/screen/property/search/widget/search_item_contact_number.dart';
import 'package:search_fun/screen/property/search/widget/search_item_distance.dart';
import 'package:search_fun/screen/property/search/widget/search_item_name.dart';
import 'package:search_fun/screen/property/search/widget/search_item_thumbnail.dart';
import 'package:search_fun/theme/app_color.dart';

class SearchTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String name;
  final double distance;
  final String thumbnail;
  final String address;
  final String phoneNumber;
  final String developer;

  const SearchTile({
    Key? key,
    required this.onTap,
    required this.name,
    required this.distance,
    required this.thumbnail,
    required this.address,
    required this.phoneNumber,
    required this.developer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SearchItemName(name: name),
                const SizedBox(width: 2),
                SearchItemDistance(distance: distance)
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SearchItemThumbnail(image: thumbnail),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.location_on, color: AppColor.lightBlackColor, size: 12,),
                          SearchItemAddress(address: address)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.phone, color: AppColor.lightBlackColor, size: 12,),
                          SearchItemContactNumber(phoneNumber: phoneNumber)
                        ],
                      ),
                      DevelopedByText(developer: developer)
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GetConnectedButton(onPressed: () {}),
                      SaveForLaterButton(onPressed: () {}),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
