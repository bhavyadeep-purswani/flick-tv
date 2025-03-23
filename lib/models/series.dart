class Series {
  final String id;
  final String name;
  final String posterUrl;
  final List<String> episodeUrls;

  Series({
    required this.id,
    required this.name,
    required this.episodeUrls,
    required this.posterUrl,
  });
}
