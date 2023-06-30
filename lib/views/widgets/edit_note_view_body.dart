import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 30.0,
      ),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomTextFormField(hintTex: 'Title'),
          SizedBox(
            height: 20.0,
          ),
          CustomTextFormField(
            hintTex: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
