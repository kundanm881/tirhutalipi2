import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key, required this.slideData});
  final List<String> slideData;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: slideData.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                slideData[index],
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.color),
            ),
          ),
        );
      },
      options: CarouselOptions(
        viewportFraction: 1,
        height: double.maxFinite,
        initialPage: 0,
        autoPlay: true,
      ),
    );
  }
}
