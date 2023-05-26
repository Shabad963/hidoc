
import 'package:flutter/material.dart';
import 'package:hidoc/config/common.dart';
import 'package:hidoc/model/article_model.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
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
        height: 250,
       width:  width > webScreenSize ? width /2 : width,
        padding: EdgeInsets.all(15),
        
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
        ),
        child:width > webScreenSize ? Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
            children: [
              MainTitle(
                title: "News",
              ),
              SizedBox(height: 10,width: 10),
          SizedBox(
          width:  width > webScreenSize ? width /2.5 : width,
            child: Description(title: data.news[0].title)),
            ],
          ),
          
           SizedBox(height: 10,width:10),
          Expanded(child: Center(child: Image.network(data.trandingArticle[0].articleImg,width: 200)))
        ]) : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
            children: [
              MainTitle(
                title: "News",
              ),
              SizedBox(height: 10,width: 10),
          Description(title: data.news[0].title),
            ],
          ),
          
           SizedBox(height: 10,width:10),
          Center(child: Image.network(data.trandingArticle[0].articleImg,width: width > webScreenSize ? width /4 : width,))
        ]));
  }
}
