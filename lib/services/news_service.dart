import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  void main() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=08e66f3cfd044229961a9ebbce43fe28',
    );
    dynamic articles = response.data['articles'];
  }
}
