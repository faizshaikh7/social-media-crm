// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_helper/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final double borderradius;
  final Color bordercolor;
  final TextEditingController? controller;
  final double widh;
  final double height;
  final bool showHeaderText;
  final String? headerText;
  final Color? headerTextColor;

  final String hinttext;
  final Color hintColor;
  final Color? onlyborder;
  final double fontsize;
  final Color? textcolor;
  final TextInputType? keyboardType;
  //final FontWeight fontweight;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    this.headerText,
    this.headerTextColor,
    required this.borderradius,
    required this.bordercolor,
    this.controller,
    required this.widh,
    required this.height,
    required this.hinttext,
    required this.hintColor,
    this.onlyborder,
    required this.fontsize,
    this.textcolor,
    this.showHeaderText = false,
    required this.obscureText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (showHeaderText)
            ? Text(
                headerText ?? "",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: textColor,
                ),
              )
            : SizedBox.shrink(),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: onlyborder ?? Colors.transparent),
            borderRadius: BorderRadius.circular(borderradius),
            color: bordercolor,
          ),
          width: MediaQuery.of(context).size.width * widh,
          height: MediaQuery.of(context).size.height * height,
          child: TextField(
            cursorColor: Colors.grey.shade600,
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: hinttext,
              hintStyle: TextStyle(
                color: hintColor,
                fontSize: fontsize,
              ),
              // border:
              // OutlineInputBorder(
              //   borderSide:
              //       BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
              // ),
              // enabledBorder: OutlineInputBorder(
              //   borderSide:
              //       BorderSide(width: 1, color: Colors.black), //<-- SEE HERE
              // ),
              border: InputBorder.none,
            ),
            obscureText: obscureText,
            keyboardType: keyboardType,
            style: TextStyle(
              color: textcolor ?? hintColor,
            ),
          ),
        ),
      ],
    );
  }
}
