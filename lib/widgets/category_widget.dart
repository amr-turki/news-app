import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';
import 'package:news_application/screens/categor_screen.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.model});

  final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: model.text);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Container(
          height: 75,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(model.image),
            ),
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
      ),
    );
  }
}
