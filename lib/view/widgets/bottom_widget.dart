
import 'package:flutter/material.dart';
import 'package:hidoc/config/common.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
       
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Color.fromARGB(255, 143, 107, 107)),
        ),
        child: Column(children: [
          RowContainerWidget(
            height: height,
            width: width,
            title: ' Quizzes',
            icon: Icons.quiz,
            subtitle:
                'Participate & win exciting prizes',
          ),
          Divider(
            thickness: 2,
          ),
          RowContainerWidget(
            height: height,
            width: width,
            title: ' Medical Calculators',
            icon: Icons.calculate_outlined,
            subtitle:
                'Get Acces to 800+ Evidence based calculators',
          ),
        ]));
  }
}



class RowContainerWidget extends StatelessWidget {
  const RowContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final double height;
  final double width;
  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            height: height / 10,
            width: width * 0.13,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlueAccent,
            ),
            child: Icon(icon, size: width / 15, color: Colors.blue)),
            
        SizedBox(
          width: width / 2.5,
          child: MainTitle(
            title: title,
          ),
        ),
        SizedBox(
          width: width / 3.5,
          child: Description(title: subtitle),
        ),
      ],
    );
  }
}
