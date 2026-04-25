import 'package:flutter/material.dart';
import 'package:news_application/models/feed_model.dart';
import 'package:news_application/widgets/feed_widget.dart';

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
