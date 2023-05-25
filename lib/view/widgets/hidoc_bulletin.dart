import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/model/article_model.dart';

class HidocBulletin extends StatelessWidget {
  const HidocBulletin({
    super.key,
    required this.width,
    required this.data,
  });

  final double width;
  final Data data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(
            title: "Hidoc Bulletin",
          ),
          SizedBox(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.trandingArticle.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (contex, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 6,
                        width: width / 3,
                        color: primaryColor,
                      ),
                      SizedBox(height: 10),
                      SubTitle(title: data.trandingArticle[index].articleTitle),
                       SizedBox(height: 10),
                      Description(
                          title:
                              data.trandingArticle[index].articleDescription),
                                                    SizedBox(height: 10),

                      ReadMore(),
                      SizedBox(height: 20),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
