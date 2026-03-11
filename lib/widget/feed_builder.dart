import 'package:flutter/material.dart';
import 'package:news_app/model/feed_model.dart';
import 'package:news_app/widget/feed_item.dart';

class FeedBuilder extends StatelessWidget {
  const FeedBuilder({super.key, required this.models});

  final List<FeedModel> models;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: models.length, (
        context,
        index,
      ) {
        return FeedItem(model: models[index]);
      }),
    );
  }
}
