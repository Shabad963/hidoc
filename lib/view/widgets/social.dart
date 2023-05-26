
import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';
import 'package:hidoc/config/common.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.width,
    this.isWeb = false
  });

  final double width;
  final bool? isWeb;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        
        width: width,
        decoration: BoxDecoration(
          color: isWeb == false ?Colors.yellow.withOpacity(0.2) : Colors.lightBlue.withOpacity(0.2),
        ),
        child: Row(
          children: [
            SizedBox(
              width: width / 2,
              child: SubTitle(
                title:
                    "Social network for doctors - A special feature on Hidoc Dr.",
              ),
            ),
            Expanded(
              child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                     color: isWeb == false ?Colors.orange : Colors.blue,
                    borderRadius: BorderRadius.all(
                
                    Radius.circular(25.0)),),
                 
                  child: Center(child: Text("Visit",style: TextStyle(color: whiteColor)))),
            ),
          ],
        ));
  }
}
