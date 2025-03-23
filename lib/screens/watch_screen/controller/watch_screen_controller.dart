import 'package:better_player_enhanced/better_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:demo_flutter/screens/watch_screen/widgets/all_episodes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchScreenController extends GetxController {
  final List<BetterPlayerDataSource> dataSources;
  final List<String> urls;
  final List<BetterPlayerController> videoControllers = [];
  final currentUrlIndex = 0.obs;
  late final BetterPlayerController playerController;
  final SwiperController swiperController = SwiperController();

  WatchScreenController({required this.urls})
    : dataSources =
          urls
              .map<BetterPlayerDataSource>(
                (url) => BetterPlayerDataSource(
                  BetterPlayerDataSourceType.network,
                  url,
                ),
              )
              .toList() {
    playerController = BetterPlayerController(
      BetterPlayerConfiguration(
        fit: BoxFit.cover,
        autoPlay: true,
        aspectRatio: Get.size.width / Get.size.height,
        eventListener: (event) {
          if (event.betterPlayerEventType == BetterPlayerEventType.finished) {
            nextVideo();
          }
        },
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        urls[currentUrlIndex.value],
      ),
    );
    _initializeControllers();
  }

  void _initializeControllers() {
    for (var url in urls) {
      BetterPlayerDataSource dataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        url,
        bufferingConfiguration: BetterPlayerBufferingConfiguration(
          minBufferMs: 2000,
          maxBufferMs: 10000,
          bufferForPlaybackMs: 1000,
          bufferForPlaybackAfterRebufferMs: 2000,
        ),
      );
      BetterPlayerControlsConfiguration controlsConfiguration =
          BetterPlayerControlsConfiguration(
            overflowMenuCustomItems: [
              BetterPlayerOverflowMenuItem(
                Icons.list,
                "View All Episodes",
                openEpisodeSheet,
              ),
            ],
          );
      BetterPlayerController betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
          autoPlay: true,
          autoDispose: false,
          fit: BoxFit.cover,
          aspectRatio: Get.size.width / Get.size.height,
          eventListener: (event) {
            if (event.betterPlayerEventType == BetterPlayerEventType.finished) {
              nextVideo();
            }
          },
          controlsConfiguration: controlsConfiguration,
        ),
      );

      betterPlayerController.setupDataSource(dataSource);
      videoControllers.add(betterPlayerController);
    }
  }

  BetterPlayerController getController(int index) {
    return videoControllers[index];
  }

  void openEpisodeSheet() {
    Get.bottomSheet(AllEpisodes(noOfEpisodes: urls.length, controller: this));
  }

  @override
  void dispose() {
    for (var controller in videoControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void nextVideo() {
    swiperController.next(animation: true);
  }

  void goToVideo(int index) {
    swiperController.move(index, animation: true);
  }
}
