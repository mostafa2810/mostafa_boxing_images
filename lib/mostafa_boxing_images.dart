library mostafa_boxing_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MostafaBoxingImages extends StatefulWidget {
  const MostafaBoxingImages({super.key});

  @override
  State<MostafaBoxingImages> createState() => _MostafaBoxingImagesState();
}

class _MostafaBoxingImagesState extends State<MostafaBoxingImages> {
  List<String> imgurl = [
    "https://images.unsplash.com/photo-1555661530-68c8e98db4e6",
    "https://images.unsplash.com/photo-1606335543042-57c525922933",
    "https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70",
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
          itemCount: imgurl.length,
          itemBuilder: (context, index, pageViewIndex) {
            return Container(
              child: Image.network(imgurl.elementAt(index)),
            );
          },
          options: CarouselOptions(autoPlay: true)),
    );
  }
}
