import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<note_model>? notes;
  FetchAllNotes(){


   
  var NotesBox= Hive.box<note_model>(knotesBox);
  notes =   NotesBox.values.toList();
  
emit(NotesSuccess());
   
  }
}
