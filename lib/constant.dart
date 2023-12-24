import 'package:flutter/material.dart';

const kprimary_color =Color(0xff62FCD7);
const knotesBox = "notes box";

void Show_SnackBar(BuildContext context,String Massage) {
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(Massage),
      ),
    );
  }

  List Colorss =[
    Color(0xff8BECF5),
    Color(0xff12C0CF),
    Color(0xff0C848F),
    Color(0xff09636B),
    Color(0xff0E89CB),
    Color(0xff063751),
    Color(0xff031B29),
  ];