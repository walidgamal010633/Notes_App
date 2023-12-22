import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  FetchAllNotes(){


   try {
  var NotesBox= Hive.box<note_model>(knotesBox);
  List<note_model>notes =   NotesBox.values.toList();
  emit(Notesuccess());
}  catch (e) {
  emit(NoteFalir(e.toString()));
}
   
  }
}
