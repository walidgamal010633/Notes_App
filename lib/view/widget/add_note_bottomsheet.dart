import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/add_note_form.dart';


class addnotebottomsheet extends StatelessWidget {
  const addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
        child: add_note_form(),
      ),
    );
  }
}
