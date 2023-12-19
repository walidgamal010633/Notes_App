import 'package:flutter/material.dart';

void main() {
  runApp(const notes_App());
}

class notes_App extends StatelessWidget {
  const notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Container(),
      )

    );
  }
}