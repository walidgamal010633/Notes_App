import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_icon.dart';



class customappbar extends StatelessWidget {
  const customappbar({super.key, required this.icon, required this.text, this.onPressed});
final Icon icon ;
final String text;
final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(children: [
        Text(text,style: TextStyle(fontSize: 32),),
      Spacer(),
        
       customicon(
        onPressed:onPressed ,
        icon: icon,)
      ],),
    );
  }
}
