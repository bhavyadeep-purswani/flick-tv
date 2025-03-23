import 'package:demo_flutter/screens/home_screen/widgets/home_screen_banner.dart';
import 'package:demo_flutter/screens/home_screen/widgets/home_screen_listing_tabs.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: EdgeInsetsDirectional.all(8),
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverToBoxAdapter(child: HomeScreenBanner()),
              SliverToBoxAdapter(
                child: TabBar(
                  tabs: [
                    Tab(text: "Popular"),
                    Tab(text: "New"),
                    Tab(text: "Most Watched"),
                  ],
                ),
              ),
            ];
          },
          body: HomeScreenListing(),
        ),
      ),
    );
  }
}
