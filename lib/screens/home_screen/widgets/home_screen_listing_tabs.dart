import 'package:demo_flutter/screens/home_screen/widgets/home_screen_item_list.dart';
import 'package:flutter/material.dart';

class HomeScreenListing extends StatelessWidget {
  const HomeScreenListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreenItemList(),
          HomeScreenItemList(),
          HomeScreenItemList(),
        ],
      ),
    );
  }
}
