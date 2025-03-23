import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your favourite shows',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          Icon(
            Icons.account_circle,
            size: 48,
          ),
        ],
      ),
    );
  }
}
