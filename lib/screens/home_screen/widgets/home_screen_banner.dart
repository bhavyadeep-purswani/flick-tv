import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
      items: [
        Image.network(
          "https://images.unsplash.com/photo-1560169897-fc0cdbdfa4d5?q=80&w=3272&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
        Image.network(
          "https://plus.unsplash.com/premium_photo-1664302216496-313b5c91922e?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        ),
      ],
    );
  }
}
