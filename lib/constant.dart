import 'package:flutter/material.dart';

const kprimary_color = Color(0xff468FAF);
const knotesBox = "notes box";

void Show_SnackBar(BuildContext context, String Massage) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kprimary_color,
      content: Text(
        Massage,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

List KColorss = [
  Color(0xffA9D6E5),
  Color(0xff89C2D9),
  Color(0xff61A5C2),
  Color(0xff468FAF),
  Color(0xff2C7DA0),
  Color(0xff2A6F97),
  Color(0xff014F86),
  Color(0xff01497C),
];
