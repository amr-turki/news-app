import 'package:flutter/material.dart';
import 'package:news_app/model/feed_model.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key, required this.model});

  final FeedModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(18),
            child: Image.network(
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
              model.image ?? 'https://i.ytimg.com/vi/EWdwvvwUUUQ/sddefault.jpg',
            ),
          ),

          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            model.title ?? 'Failed To Load',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            model.description ?? 'Failed To Load',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
