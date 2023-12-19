import 'package:flutter/material.dart';
import 'package:notes_app/view/note_view.dart';

void main() {
  runApp(const notes_App());
}

class notes_App extends StatelessWidget {
  const notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home:noteview() 

    );
  }
}