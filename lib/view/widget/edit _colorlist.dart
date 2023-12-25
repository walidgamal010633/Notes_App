import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/widget/color%20list.dart';


class edit_colorlist extends StatefulWidget {
  const edit_colorlist({super.key, required this.note, });
final note_model note ;
  @override
  State<edit_colorlist> createState() => _edite_colorlistState();
}

class _edite_colorlistState extends State<edit_colorlist> {
 late int currentindex ;
  @override
  void initState() {
    currentindex = KColorss.indexOf(Color(widget.note.Color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: KColorss.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
               currentindex =index;
               widget.note.Color =KColorss[index].value;
                setState(() {
                   
                });
              },
              child: coloritem(
                colorr:KColorss[index] ,
                isActive: currentindex == index,
              ),
            );
          }),
    );
  }
}