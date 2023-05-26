import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/controller/article_controller.dart';
import 'package:hidoc/model/article_model.dart';
import 'package:hidoc/service/articles_service.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidoc/view/widgets/drop_down.dart';

class TopCardWeb extends StatelessWidget {
  const TopCardWeb({
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
    return Row(
      children: [
        SizedBox(width: 30),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: height / 3,
              width: width / 4,
              color: greyColor,
              child: Center(
                  child: Icon(Icons.newspaper,
                      size: width / 10, color: Colors.grey)),
            ),
            Container(
                height: 40,
                width: width * 0.07,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(15.0)),
                ),
                child: Center(
                    child: Text("point \n   2",
                        style: TextStyle(color: Colors.white))))
          ],
        ),
        Container(
            height: height / 3,
            width: width / 1.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                        SubTitle(title: data.trandingBulletin[0].articleTitle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left :8.0),
                    child: Description(
                        title: data.trandingBulletin[0].articleDescription),
                  ),
                  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Read full article to earn points",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                  decoration: TextDecoration.underline,
                                  fontStyle: FontStyle.italic)),
                        ),
                        Expanded(
                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Description(
                          title: "Published at: ${data.news[0].publishedAt}"),
                                          ),
                        ),
                ])),
        SizedBox(height: 20),
      ],
    );
  }
}
