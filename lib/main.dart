import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/view/note_view.dart';

void main() async{

 await Hive.initFlutter();
  await Hive.openBox(knotesBox);
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