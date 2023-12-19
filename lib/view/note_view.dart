import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/add_note_bottomsheet.dart';
import 'package:notes_app/view/widget/custom_appbar.dart';
import 'package:notes_app/view/widget/note_listview.dart';
import 'package:notes_app/view/widget/note_view_body.dart';

class noteview extends StatelessWidget {
  const noteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 39, 74, 94),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (builder) {
                    return const addnotebottomsheet();
                  });
            }),
        body: noteViewBody());
  }
}