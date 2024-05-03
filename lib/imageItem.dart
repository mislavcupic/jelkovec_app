import 'package:flutter/material.dart';

abstract class AbstractImageItem extends StatelessWidget {
  String src;
  String title;
  String description;

  AbstractImageItem(this.src, this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context);
}

class ImageItem extends AbstractImageItem {
  ImageItem(super.src, super.title, super.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            Image.asset(
              src,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageManager {
  final List<AbstractImageItem> _images = [];

  void addImage(AbstractImageItem image) {
    _images.add(image);
  }

  void removeImage(int index) {
    _images.removeAt(index);
  }

  List<AbstractImageItem> getAllImages() {
    return _images;
  }
}
