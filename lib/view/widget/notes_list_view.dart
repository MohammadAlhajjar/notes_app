import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> noteItemColors = const [
    Color(0xffffcd79),
    Color(0xffe7e895),
    Color(0xff76d6ee),
    Color(0xffd69cde),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: NoteItem(
                noteItemColor: noteItemColors[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
