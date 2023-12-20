import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_appbar.dart';




class edite_note_body extends StatelessWidget {
  const edite_note_body({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(children: [
        SizedBox(height: 40,),
        customappbar(icon: Icon(Icons.check), text: "Edit Notes")
      ],),
    );;
  }
}