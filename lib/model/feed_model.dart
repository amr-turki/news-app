class FeedModel {
  String? image;
  String? title;
  String? description;

  FeedModel({
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
