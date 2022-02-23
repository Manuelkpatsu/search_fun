import 'package:flutter/material.dart';
import 'package:search_fun/screen/property/gallery/gallery_screen.dart';
import 'package:search_fun/screen/property/index/widget/image_numbers.dart';
import 'package:search_fun/screen/property/index/widget/interior_thumbnail.dart';

class InteriorImageGridView extends StatelessWidget {
  final List<String> galleryItems;

  const InteriorImageGridView({
    Key? key,
    required this.galleryItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        itemCount: galleryItems.length > 3 ? 3 : galleryItems.length,
        padding: const EdgeInsets.all(0),
        semanticChildCount: 1,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 0,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return galleryItems.length > 3 && index == 2
              ? ImageNumbers(index: index, galleryItems: galleryItems)
              : InteriorThumbnail(
                  image: galleryItems[index],
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
                );
        });
  }
}
