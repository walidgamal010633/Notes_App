part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class Notesuccess extends NotesState{}
final class NoteFalir extends NotesState{

  final String massage;

  NoteFalir(this.massage);
}
