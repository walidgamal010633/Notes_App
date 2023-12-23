import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/edite_Note.dart';

class cardItem extends StatelessWidget {
  const cardItem({super.key, required this.note});
 final note_model note ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (builder) {
            return edit_note();
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.Color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 28, bottom: 12),
                child: Text(
                  note.titel,
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  note.subtitel,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).FetchAllNotes();
                  Show_SnackBar(context, "The note has been deleted successfully");
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 42,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
