import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.model});

  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: 75,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: AssetImage(model.image)),
        ),
        child: Center(
          child: Text(
            model.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
