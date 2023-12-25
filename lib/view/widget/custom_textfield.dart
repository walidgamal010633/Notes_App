import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class custom_taxtfield extends StatelessWidget {
  const custom_taxtfield(
      {super.key,
      this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.text});
  final String? hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filed is requird";
        }
        {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kprimary_color,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimary_color,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimary_color,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimary_color,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kprimary_color,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
