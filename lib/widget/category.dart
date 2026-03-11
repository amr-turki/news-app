import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.model});

  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
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
    );
  }
}
