import 'package:flutter/material.dart';

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
        width: width,
        child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Card(
            child: SizedBox(
              height: 50.0,
              // 35,
              // width: 40.0,
              //  150,
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
                      color: const Color(0xffB0B0B0),
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
                    "Citical care",
                    "Other",
                    "Other"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 10,
                              color: const Color(0xffB0B0B0),
                              fontWeight: FontWeight.w600,
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
