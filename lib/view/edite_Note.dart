import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/edit_notes_body.dart';



class edit_note extends StatelessWidget {
  const edit_note({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: edite_note_body(),
    );
  }
}
