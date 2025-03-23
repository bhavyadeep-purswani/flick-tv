import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? appBar;

  const AppScaffold({this.body, this.appBar, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            appBar != null
                ? PreferredSize(
                  preferredSize: Size.fromHeight(64),
                  child: appBar!,
                )
                : null,
        body: body,
      ),
    );
  }
}
