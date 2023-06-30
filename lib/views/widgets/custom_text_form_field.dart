import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintTex, this.maxLines = 1});

  final String hintTex;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: defaultColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintTex,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: defaultColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
