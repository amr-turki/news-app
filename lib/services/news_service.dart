import 'package:dio/dio.dart';
import 'package:news_application/models/feed_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<FeedModel>> FetchData({required String category}) async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=08e66f3cfd044229961a9ebbce43fe28&country=$category',
    );
    dynamic articles = response.data['articles'];

    List<FeedModel> models = [];

    for (var article in articles) {
      models.add(FeedModel.fromjson(article));
    }

    return models;
  }
}
