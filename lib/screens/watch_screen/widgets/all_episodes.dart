import 'package:demo_flutter/screens/watch_screen/controller/watch_screen_controller.dart';
import 'package:demo_flutter/screens/watch_screen/widgets/episode_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllEpisodes extends StatelessWidget {
  final int noOfEpisodes;
  final WatchScreenController controller;

  const AllEpisodes({
    super.key,
    required this.noOfEpisodes,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: MediaQuery.of(context).size.width / 2,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.close),
            ),
            Container(
              padding: EdgeInsetsDirectional.all(8),
              width: double.infinity,
              child: Wrap(
                spacing: 8,
                children: List.generate(noOfEpisodes, (index) {
                  return EpisodeIcon(
                    episodeNumber: index + 1,
                    controller: controller,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
