import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';


class custom_taxtfield extends StatelessWidget {
  const custom_taxtfield({super.key, required this.hintText, this.maxLines = 1, this.onSaved});
 final String hintText ;
 final int maxLines;
 final void Function(String?)? onSaved ;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved:onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "this field is required";
          
        }else{
          return null ;
        }
      },
      maxLines:maxLines ,
      cursorColor: kprimary_color,
      decoration: InputDecoration(
        
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kprimary_color,
              ),
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kprimary_color,
              ),
              borderRadius: BorderRadius.circular(16))),
              
    );
    
  }
}
