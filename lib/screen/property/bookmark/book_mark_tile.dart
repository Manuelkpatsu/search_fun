import 'package:flutter/material.dart';
import 'package:search_fun/theme/app_color.dart';

import 'widget/built_by_text.dart';
import 'widget/book_mark_item_address.dart';
import 'widget/book_mark_item_contact_number.dart';
import 'widget/book_mark_item_name.dart';
import 'widget/book_mark_item_thumbnail.dart';
import 'widget/connected_button.dart';

class BookMarkTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String name;
  final String thumbnail;
  final String address;
  final String phoneNumber;
  final String developer;

  const BookMarkTile({
    Key? key,
    required this.onTap,
    required this.name,
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
            BookMarkItemName(name: name),
            const SizedBox(height: 8),
            Row(
              children: [
                BookMarkItemThumbnail(image: thumbnail),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: AppColor.lightBlackColor,
                            size: 12,
                          ),
                          BookMarkItemAddress(address: address)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            color: AppColor.lightBlackColor,
                            size: 12,
                          ),
                          BookMarkItemContactNumber(phoneNumber: phoneNumber)
                        ],
                      ),
                      BuiltByText(developer: developer)
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ConnectedButton(onPressed: () {}),
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
