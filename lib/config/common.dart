import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidoc/config/colors.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)));
  }
}

class SubTitle extends StatelessWidget {
  final String title;
  const SubTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}

class Description extends StatelessWidget {
  final String title;
  const Description({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 12,
          color: blackColor,
          
        ),
      ),
    );
  }
}

class ReadMore extends StatelessWidget {
  const ReadMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Read more",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: primaryColor,
          decoration: TextDecoration.underline,
        ));
  }
}
