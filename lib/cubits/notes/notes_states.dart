part of 'notes_cubit.dart';

abstract class NotesStates {}

class AddNoteInitialState extends NotesStates {}

class AddNoteLoadingState extends NotesStates {}

class AddNoteSuccessState extends NotesStates {}

class AddNoteErrorState extends NotesStates {
  final String error;

  AddNoteErrorState(this.error);
}

class GetNotesSuccessState extends NotesStates {}

class NotesChangeColorState extends NotesStates {}
