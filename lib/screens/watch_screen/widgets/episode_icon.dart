import 'package:demo_flutter/screens/watch_screen/controller/watch_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EpisodeIcon extends StatelessWidget {
  final int episodeNumber;
  final WatchScreenController controller;

  const EpisodeIcon({
    super.key,
    required this.episodeNumber,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.goToVideo(episodeNumber - 1);
        Get.back();
      },
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(episodeNumber.toString())),
      ),
    );
  }
}
