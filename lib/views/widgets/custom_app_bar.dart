import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 28.0,
          ),
        ),
        const Spacer(),
        Container(
          height: 46.0,
          width: 46.0,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: const Icon(
            Icons.search,
            size: 28.0,
          ),
        ),
      ],
    );
  }
}
