import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => const NoteItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10.0,
        ),
        itemCount: 10,
      ),
    );
  }
}
