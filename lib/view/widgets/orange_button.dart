
import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';

class ButtonOrange extends StatelessWidget {
  const ButtonOrange({
    super.key,
    required this.width,
    required this.title,
  });

  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
            height: 50,
            width: width,
            color: Colors.orange,
            child: Center(child: Text(title,style: TextStyle(color: whiteColor)))),
        SizedBox(height: 10),
      ],
    );
  }
}
