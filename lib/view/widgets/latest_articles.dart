
import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/model/article_model.dart';

class LatestArticles extends StatelessWidget {
  const LatestArticles({
    super.key,
    required this.data,
  });

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
        ),
        child: Column(children: [
          MainTitle(
            title: "Latest Articles",
          ),
          Divider(color: blackColor,thickness: 1),
          SizedBox(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.trandingArticle.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (contex, index) {
                  return Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Description(
                          title: data.trandingArticle[index]
                              .articleTitle),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  );
                }),
          )
        ]));
  }
}
