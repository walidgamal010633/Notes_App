import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_textfield.dart';
import 'package:notes_app/view/widget/custoum_bottom.dart';

class addnotebottomsheet extends StatelessWidget {
  const addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          custom_taxtfield(hintText: "hintText"),
          SizedBox(
            height: 20,
          ),
          custom_taxtfield(
            hintText: "sss",
            maxLines: 5,
          ),

          SizedBox(height: 20,),

          custom_bottom()
        ],
      ),
    );
  }
}
