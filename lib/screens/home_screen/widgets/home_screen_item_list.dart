import 'package:demo_flutter/screens/home_screen/widgets/home_screen_item.dart';
import 'package:demo_flutter/services/video_service.dart';
import 'package:flutter/material.dart';

class HomeScreenItemList extends StatelessWidget {
  const HomeScreenItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 2 / 3,
      children:
          VideoService.getAllSeries()
              .map((series) => HomeScreenItem(series: series))
              .toList(),
    );
  }
}
