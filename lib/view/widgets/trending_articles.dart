
import 'package:flutter/material.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/model/article_model.dart';

class TrendingArticles extends StatelessWidget {
  const TrendingArticles({
    super.key,
    required this.height,
    required this.width,
    required this.data,
  });

  final double height;
  final double width;
  final Data data;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Color(0xffDCDCDC)),
        ),
        child: Column(children: [
          MainTitle(
            title: "Trending articles",
          ),
           SizedBox(height: 15),
          Container(
              height: height / 5,
              width: width / 1.3,
              color: Color(0xffDCDCDC),
              child: Icon(Icons.newspaper, size: width / 3,color: Colors.grey)),
               SizedBox(height: 10),
          Description(
              title: data.trandingArticle[0].articleTitle),
             
          Divider(
            thickness: 2,
          ),
           SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                  height: height / 10,
                  width: width / 4,
                  color: Color(0xffDCDCDC),
                  child: Icon(Icons.newspaper,
                      size: width / 10,color: Colors.grey)),
                      SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  width: width / 1.8,
                  child: Description(
                      title: data.trandingArticle[0]
                          .articleDescription),
                ),
              ),
            ],
          )
        ]));
  }
}
