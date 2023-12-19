import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custoum_appbar.dart';
import 'package:notes_app/view/widget/note_listview.dart';
import 'package:notes_app/view/widget/note_view_body.dart';

class noteview extends StatelessWidget {
  const noteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:noteViewBody()
    );
  }
}


