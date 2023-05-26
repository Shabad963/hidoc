
import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';

class ButtonMain extends StatelessWidget {
  const ButtonMain({
    super.key,
    required this.width,
    required this.title,
    this.isWeb = false,
  });

  final double width;
  final String title;
  final bool? isWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
            height: 50,
            width: width,
            color: isWeb == false ?Colors.orange: Colors.blue,
            child: Center(child: Text(title,style: TextStyle(color: whiteColor)))),
        SizedBox(height: 10),
      ],
    );
  }
}
