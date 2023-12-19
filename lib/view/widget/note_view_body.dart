import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_appbar.dart';
import 'package:notes_app/view/widget/note_listview.dart';

class noteViewBody extends StatelessWidget {
  const noteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          SizedBox(height: 40,),
          customappbar(),
          SizedBox(height: 20,),
          Expanded(child: notelistview()),
        ],
      );
  }
}