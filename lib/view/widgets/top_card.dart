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


class TopCard extends StatelessWidget {
  const TopCard({
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
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          height: height / 5,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            color: Colors.grey,
          ),
          child: Center(
              child: Icon(
            Icons.newspaper,
            size: width / 3,
          )),
        ),
        Container(
            height: height / 4,
            width: width,
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 1.0,
                    offset: Offset(0.0, 0.75))
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
              color: Colors.white,
            ),
            child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SubTitle(title: data.trandingBulletin[0].articleTitle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Description(
                        title: data.trandingBulletin[0].articleDescription),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text("Read full article to earn points",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                  decoration:
                                      TextDecoration.underline,
                                  fontStyle: FontStyle.italic)),
                        ),
                        Container(
                            height: 100,
                            width: width / 6,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular(10.0)),
                            ),
                            child: Center(
                                child: Text("point \n   2",style: TextStyle(color: Colors.white))))
                      ],
                    ),
                  ),
                ])),
                SizedBox(height: 20),
      ],
    );
  }
}
