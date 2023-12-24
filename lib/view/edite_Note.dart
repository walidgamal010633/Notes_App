import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/widget/edit_notes_body.dart';



class edit_note extends StatelessWidget {
  const edit_note({super.key, required this.note});
final note_model note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: edite_note_body(note: note),
    );
  }
}
