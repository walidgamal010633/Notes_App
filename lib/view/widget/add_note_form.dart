import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_bottom.dart';
import 'package:notes_app/view/widget/custom_textfield.dart';


class add_note_form extends StatefulWidget {
  const add_note_form({
    super.key,
  });

  @override
  State<add_note_form> createState() => _add_note_formState();
}

class _add_note_formState extends State<add_note_form> {
  final GlobalKey<FormState>formkey=GlobalKey();
   AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? titel ,subtitel ;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formkey ,
      autovalidateMode:autovalidateMode ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          custom_taxtfield(
            onSaved: (value){
              titel=value;
            },
            hintText: "hintText"),
          SizedBox(
            height: 20,
          ),
          custom_taxtfield(
            
            onSaved: (value){
            subtitel =value;
            },
            
            hintText: "sss",
            maxLines: 5,
          ),
            
          SizedBox(height: 20,),
            
          custom_bottom(
            ontap: () {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}
