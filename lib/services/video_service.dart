import 'package:demo_flutter/models/series.dart';

abstract class VideoService {
  static List<Series> getAllSeries() {
    return [
      Series(
        id: '1',
        name: 'Series 1',
        posterUrl:
            "https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        episodeUrls: [
          "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
          "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
          "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        ],
      ),
      Series(
        id: '2',
        name: 'Series 2',
        posterUrl:
            "https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        episodeUrls: [
          "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
          "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
          "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        ],
      ),
      Series(
        id: '3',
        name: 'Series 3',
        posterUrl:
            "https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        episodeUrls: [
          "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
          "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
          "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        ],
      ),
      Series(
        id: '4',
        name: 'Series 4',
        posterUrl:
            "https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        episodeUrls: [
          "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
          "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
          "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        ],
      ),
      Series(
        id: '5',
        name: 'Series 5',
        posterUrl:
            "https://images.unsplash.com/photo-1581092795360-fd1ca04f0952?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        episodeUrls: [
          "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
          "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_fmp4/master.m3u8",
          "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        ],
      ),
    ];
  }
}
