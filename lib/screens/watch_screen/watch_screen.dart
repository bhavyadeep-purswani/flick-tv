import 'package:better_player_enhanced/better_player.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:demo_flutter/common_widgets/app_scaffold.dart';
import 'package:demo_flutter/screens/watch_screen/controller/watch_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => WatchScreenController(urls: Get.arguments["urls"]),
      child: AppScaffold(
        body: Consumer<WatchScreenController>(
          builder:
              (context, controller, child) => Swiper(
                controller: controller.swiperController,
                itemCount: Get.arguments["urls"].length,
                scrollDirection: Axis.vertical,
                itemBuilder:
                    (context, index) => SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: BetterPlayer(
                        controller: controller.getController(index),
                      ),
                    ),
              ),
        ),
      ),
    );
  }
}
