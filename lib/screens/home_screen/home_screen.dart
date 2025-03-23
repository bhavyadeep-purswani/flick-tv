import 'package:demo_flutter/common_widgets/app_scaffold.dart';
import 'package:demo_flutter/screens/home_screen/controller/home_screen_controller.dart';
import 'package:demo_flutter/screens/home_screen/widgets/home_app_bar.dart';
import 'package:demo_flutter/screens/home_screen/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => HomeScreenController(),
      child: AppScaffold(appBar: HomeAppBar(), body: HomeScreenBody()),
    );
  }
}
