import 'package:flutter/material.dart';
import 'package:hidoc/responsive/responsive_layout.dart';
import 'package:hidoc/view/articles_view_mobile.dart';

import 'view/articles_view_web.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        home: ResponsiveLayout(
          mobileScreenLayout: ArticlesViewMobile(),
          webScreenLayout: ArticlesViewWeb(),
        ));
  }
}
