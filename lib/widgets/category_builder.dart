import 'package:flutter/material.dart';

import 'package:news_application/models/category_model.dart';
import 'package:news_application/widgets/category_item.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});

  final List<CategoryModel> models = const [
    CategoryModel(image: 'assests/images/business.jpg', text: 'business'),
    CategoryModel(
      image: 'assests/images/entertainment.jpg',
      text: 'entertainment',
    ),
    CategoryModel(image: 'assests/images/health.jpg', text: 'health'),
    CategoryModel(image: 'assests/images/science.jpg', text: 'science'),
    CategoryModel(image: 'assests/images/sports.jpg', text: 'sports'),
    CategoryModel(image: 'assests/images/technology.jpg', text: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: models.length,
        itemBuilder: (context, index) {
          return Category(model: models[index]);
        },
      ),
    );
  }
}
