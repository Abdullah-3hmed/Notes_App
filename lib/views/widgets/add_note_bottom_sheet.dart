import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      child: Column(
        children: [
          CustomTextFormField(),
        ],
      ),
    );
  }
}
