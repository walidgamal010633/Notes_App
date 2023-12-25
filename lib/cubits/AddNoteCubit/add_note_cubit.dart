import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
Color color =Color(0xffA9D6E5);
  addNote(note_model note) async {
    
    try {
      note.Color =color.value;
      var notesBox = Hive.box<note_model>(knotesBox);
      emit(AddNoteLoading());
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFalir(e.toString(),),
      );
    }
  }
}
