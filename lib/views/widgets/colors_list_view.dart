import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: BlocBuilder<NotesCubit, NotesStates>(
        builder: (context, state) {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                currentIndex = index;
                NotesCubit.get(context).color = defaultColorList[index];
                NotesCubit.get(context).changeColor();
              },
              child: ColorItem(
                isSelected: currentIndex == index,
                color: defaultColorList[index],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10.0,
            ),
            itemCount: defaultColorList.length,
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 38.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34.0,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34.0,
            backgroundColor: color,
          );
  }
}
