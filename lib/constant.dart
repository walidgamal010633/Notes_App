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