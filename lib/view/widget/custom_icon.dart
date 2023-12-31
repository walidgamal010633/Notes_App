import 'package:flutter/material.dart';



class customicon extends StatelessWidget {
  const customicon({super.key, required this.icon, this.onPressed});
final Icon icon ;
final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16) ,
        color: Colors.white.withOpacity(0.1)
        
      ),
      child: IconButton(
        
        onPressed: onPressed, icon: icon),
      
    );
  }
}