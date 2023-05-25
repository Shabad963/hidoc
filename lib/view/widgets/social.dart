
import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        
        width: width,
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(0.2),
        ),
        child: Row(
          children: [
            Column(children: [
              SubTitle(
                title:
                    "Social network for doctors - \nA special feature on Hidoc Dr.",
              ),
            ]),
            Expanded(
              child: Container(
                  height: 40,
                  width: width / 7,
                  decoration: BoxDecoration(
                     color: Colors.orange,
                    borderRadius: BorderRadius.all(
                
                    Radius.circular(25.0)),),
                 
                  child: Center(child: Text("Visit",style: TextStyle(color: whiteColor)))),
            ),
          ],
        ));
  }
}
