import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        var notes = NotesCubit.get(context).notes;
        return Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => NoteItem(note: notes[index]),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10.0,
            ),
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
