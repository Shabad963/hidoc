
import 'package:flutter/material.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/model/article_model.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
    required this.height,
    required this.data,
  });

  final double height;
  final Data data;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        height: height / 3,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          MainTitle(
            title: "News",
          ),
          SizedBox(height: 10),
          Description(title: data.news[0].title),
          Image.network(data.news[0].urlToImage)
        ]));
  }
}
