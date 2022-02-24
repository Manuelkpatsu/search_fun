import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/index/widget/book_now_button.dart';
import 'package:search_fun/screen/property/index/widget/contact_button.dart';
import 'package:search_fun/screen/property/index/widget/interior_images_grid_view.dart';
import 'package:search_fun/screen/property/index/widget/property_description.dart';
import 'package:search_fun/screen/property/index/widget/property_index_address.dart';
import 'package:search_fun/screen/property/index/widget/property_name.dart';
import 'package:search_fun/screen/property/index/widget/property_thumbnail.dart';
import 'package:search_fun/theme/app_color.dart';

import 'widget/description_text.dart';

class PropertyIndexScreen extends StatefulWidget {
  const PropertyIndexScreen({Key? key}) : super(key: key);

  @override
  State<PropertyIndexScreen> createState() => _PropertyIndexScreenState();
}

class _PropertyIndexScreenState extends State<PropertyIndexScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> _galleryItems = [
      'assets/interior/1.jpg',
      'assets/interior/2.jpg',
      'assets/interior/2.jpg',
      'assets/interior/1.jpg',
      'assets/interior/2.jpg',
    ];

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: const [
          PropertyThumbnail(thumbnail: 'assets/properties/property-1.jpg'),
          Positioned(
            top: 30,
            left: 16,
            child: CloseButton(color: AppColor.white),
          ),
        ],
      ),
      bottomSheet: BottomSheet(
        enableDrag: false,
        backgroundColor: AppColor.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        onClosing: () {},
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const PropertyName(name: 'Uberstzte Villa'),
              Row(
                children: const [
                  Icon(Icons.location_on_outlined, color: AppColor.iconColor, size: 12),
                  SizedBox(width: 2),
                  PropertyIndexAddress(address: '138 Ring Street, Road')
                ],
              ),
              const SizedBox(height: 10),
              const DescriptionText(),
              const SizedBox(height: 10),
              const PropertyDescription(
                description:
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. This has nothing to do with judging you. You can\'t be doing the same thing over and over again. Change the approach and go in hard, be disciplined and apply to more jobs.',
              ),
              const SizedBox(height: 20),
              InteriorImageGridView(galleryItems: _galleryItems),
              const SizedBox(height: 20),
              Row(
                children: [
                  ContactButton(onPressed: () {}),
                  const SizedBox(width: 10),
                  Expanded(
                    child: BookNowButton(onPressed: () {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
