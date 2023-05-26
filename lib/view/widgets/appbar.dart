import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';

class AppBarWidget extends StatelessWidget {
   AppBarWidget({
    super.key,
    required this.height,
    required this.width,
    this.isWeb = false,

  });

  final double height;
  final double width;
  final bool? isWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: height * 0.05),
      isWeb! == false ?  Container(
            height: height * 0.04,
            width: width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0)),
              color: Colors.lightBlue.withOpacity(0.5),
            ),
            child: Center(
                child: Text("hidoc",
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)))):SizedBox(),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: height * 0.05,
                width: width * 0.1,
                
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: whiteColor,width: 2),
                   ),
                child: Icon(Icons.home_rounded,color: whiteColor,)),
            MainTitle(title: "ARTICLES     "),
            SizedBox()
          ],
        )
      ],
    );
  }
}
