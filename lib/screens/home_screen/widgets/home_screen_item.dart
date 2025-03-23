import 'package:demo_flutter/models/series.dart';
import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  final Series series;

  const HomeScreenItem({super.key, required this.series});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: Key(series.id),
      onTap: () {
        Navigator.pushNamed(
          context,
          "/watch",
          arguments: {"urls": series.episodeUrls},
        );
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image.network(series.posterUrl, fit: BoxFit.cover),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.8),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Text(series.name, maxLines: 2),
            ),
          ],
        ),
      ),
    );
  }
}
