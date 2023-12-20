import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_appbar.dart';
import 'package:notes_app/view/widget/custom_textfield.dart';




class edite_note_body extends StatelessWidget {
  const edite_note_body({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          SizedBox(height: 40,),
          customappbar(icon: Icon(Icons.check), text: "Edit Notes"),
          SizedBox(height: 20,),
          custom_taxtfield(hintText: "flutter"),
          SizedBox(height: 20,),
          custom_taxtfield(hintText: "developer",
          maxLines: 5,)
        ],),
      ),
    );;
  }
}