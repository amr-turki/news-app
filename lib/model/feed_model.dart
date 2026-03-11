class FeedModel {
  final String image;
  final String title;
  final String description;

  const FeedModel({
    required this.image,
    required this.title,
    required this.description,
  });

  factory FeedModel.fromjson(json) {
    return FeedModel(
      image: json['urlToImage'],
      title: json["title"],
      description: json['description'],
    );
  }
}
