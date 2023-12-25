import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/widget/custom_appbar.dart';
import 'package:notes_app/view/widget/custom_textfield.dart';
import 'package:notes_app/view/widget/edit%20_colorlist.dart';

class edite_note_body extends StatefulWidget {
  const edite_note_body({super.key, required this.note});
  final note_model note;

  @override
  State<edite_note_body> createState() => _edite_note_bodyState();
}

class _edite_note_bodyState extends State<edite_note_body> {
  String? titel, subtitel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            customappbar(
                onPressed: () {
                  widget.note.titel = titel ?? widget.note.titel;
                  widget.note.subtitel = subtitel ?? widget.note.subtitel;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).FetchAllNotes();
                  Show_SnackBar(context, "The note has been modified successfully");
                  Navigator.pop(context);
                },
                icon: Icon(Icons.check),
                text: "Edit Notes"),
            SizedBox(
              height: 20,
            ),
            custom_taxtfield(
                onChanged: (value) {
                  titel = value;
                },
                text: widget.note.titel),
            SizedBox(
              height: 20,
            ),
            custom_taxtfield(
              onChanged: (value) {
                subtitel = value;
              },
              text: widget.note.subtitel,
              maxLines: 5,
            ),
             SizedBox(
              height: 20,
            ),
            edit_colorlist(note: widget.note,)

          ],
        ),
      ),
    );
    
  }
}
