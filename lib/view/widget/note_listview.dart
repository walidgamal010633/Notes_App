import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/widget/cardItem.dart';

class notelistview extends StatelessWidget {
  const notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {

        List<note_model>notes =BlocProvider.of<NotesCubit>(context).notes??[];
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
           
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: cardItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
