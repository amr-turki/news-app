import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/feed_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/feed_builder.dart';
import 'package:news_app/widget/feed_item.dart';

class UpperViewFeedBuilder extends StatefulWidget {
  const UpperViewFeedBuilder({super.key});

  @override
  State<UpperViewFeedBuilder> createState() => _UpperViewFeedBuilderState();
}

class _UpperViewFeedBuilderState extends State<UpperViewFeedBuilder> {
  List<FeedModel> models = [];
  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FetchData();
  }

  Future<void> FetchData() async {
    models = await NewsService(Dio()).FetchData(category: 'general');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: models.length,
            itemBuilder: (context, index) {
              return FeedBuilder(models: models);
            },
          );
  }
}
