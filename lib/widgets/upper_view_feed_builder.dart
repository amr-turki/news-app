import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/models/feed_model.dart';
import 'package:news_application/services/news_service.dart';
import 'package:news_application/widgets/feed_builder.dart';


class UpperViewFeedBuilder extends StatefulWidget {
  const UpperViewFeedBuilder({super.key, required this.category});
  final String category;

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
    models = await NewsService(Dio()).FetchData(category: widget.category);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : FeedBuilder(models: models);
  }
}
