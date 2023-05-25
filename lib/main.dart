import 'package:flutter/material.dart';
import 'package:hidoc/view/articles_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hidoc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticlesView()
    );
  }
}
