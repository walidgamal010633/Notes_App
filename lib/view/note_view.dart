import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custoum_appbar.dart';


class noteview extends StatelessWidget {
  const noteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(children: [
        SizedBox(height: 50,),
        custoumappbar(),
      ],),
    );
  }
}
