import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/SmpelBlocObserver.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/note_view.dart';

void main() async{

 await Hive.initFlutter();
 Bloc.observer =SmpelBlocObserver();
  
  await Hive.openBox<note_model>(knotesBox);
  Hive.registerAdapter(notemodelAdapter());
 
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