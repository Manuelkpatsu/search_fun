import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/gallery/gallery_screen.dart';
import 'package:search_fun/screen/property/index/widget/interior_thumbnail.dart';
import 'package:search_fun/theme/app_color.dart';
import 'package:search_fun/theme/styles.dart';

class ImageNumbers extends StatelessWidget {
  final int index;
  final List<String> galleryItems;

  const ImageNumbers({
    Key? key,
    required this.index,
    required this.galleryItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => GalleryScreen(
              galleryItems: galleryItems,
              backgroundDecoration: const BoxDecoration(
                color: Colors.black,
              ),
              initialIndex: index,
            ),
          ),
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          InteriorThumbnail(image: galleryItems[index]),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Center(
              child: Text(
                "+${galleryItems.length - index}",
                style: mediumStyle.copyWith(
                  color: AppColor.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
