import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_states.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(AddNoteInitialState());

  static NotesCubit get(context) => BlocProvider.of(context);

  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      Hive.box<NoteModel>(notesBox).add(note).then((_) {
        getNotes();
      });
      emit(AddNoteSuccessState());
    } catch (error) {
      debugPrint(error.toString());
      emit(AddNoteErrorState(error.toString()));
    }
  }

  List<NoteModel> notes = [];

  void getNotes() {
    notes = [];
    notes = Hive.box<NoteModel>(notesBox).values.toList();
    emit(GetNotesSuccessState());
  }
}
