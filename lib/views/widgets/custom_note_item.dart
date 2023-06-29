import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Something should be here',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 20.0,
                ),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24.0,
              ),
              onPressed: () {},
            ),
          ),
          Text(
            'May 21 , 2023',
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
