import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryScreen extends StatefulWidget {
  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final int? initialIndex;
  final List<String> galleryItems;

  const GalleryScreen({
    Key? key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.initialIndex,
    required this.galleryItems,
  })  : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GalleryScreenState();
  }
}

class _GalleryScreenState extends State<GalleryScreen> {
  final minScale = PhotoViewComputedScale.contained * 0.8;
  final maxScale = PhotoViewComputedScale.covered * 8;
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: widget.initialIndex ?? 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        centerTitle: true,
      ),
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (context, int index) {
            return PhotoViewGalleryPageOptions.customChild(
              child: Image.asset(widget.galleryItems[index]),
              initialScale: PhotoViewComputedScale.contained,
              minScale: minScale,
              maxScale: maxScale,
              heroAttributes: PhotoViewHeroAttributes(tag: index),
            );
          },
          itemCount: widget.galleryItems.length,
          loadingBuilder: widget.loadingBuilder,
          backgroundDecoration: widget.backgroundDecoration,
          pageController: pageController,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
