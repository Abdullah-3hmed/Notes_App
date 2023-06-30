import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
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
          child: Icon(
            icon,
            size: 28.0,
          ),
        ),
      ],
    );
  }
}
