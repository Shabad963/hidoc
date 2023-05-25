import 'package:flutter/material.dart';
import 'package:hidoc/config/colors.dart';

import 'package:hidoc/model/article_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatelessWidget {
  const DropDown({
    super.key,
    required this.width,
    required this.data,
  });

  final double width;
  final Data data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Card(
             shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),),
            child: SizedBox(
              height: 60.0,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  // itemPadding: EdgeInsets.only(left: 8),
                  // buttonPadding: EdgeInsets.only(right: 8),
                  isExpanded: true,
                  value: data.specialityName,
                  // icon: const Icon(Icons.keyboard_arrow_down),
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 10,
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                  onChanged: (String? newValue) async {},
                  items: <String>[
                    data.specialityName,
                    "Critical care",
                    "Other",
                    "Other"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left:100.0),
                        child: Text(
                          value,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color:  blackColor,
                             
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ));
  }
}
