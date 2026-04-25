import 'package:flutter/material.dart';

void main() {
  runApp(const NewsApplication());
}
class NewsApplication extends StatelessWidget {
  const NewsApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(),);
  }
}