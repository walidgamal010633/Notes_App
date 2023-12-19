import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custoum_icon.dart';



class custoumappbar extends StatelessWidget {
  const custoumappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("Notes",style: TextStyle(fontSize: 32),),
    Spacer(),
      
     custoumicon()
    ],);
  }
}
