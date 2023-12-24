import 'package:flutter/material.dart';

import 'widget/custom_search_icon.dart';
import 'widget/note_item.dart';
import 'widget/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          children: [
            AppBar(
              surfaceTintColor: const Color(0xff1c1b1f),
              title: const Text(
                "Notes",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              actions: const [
                CustomSearchIcon(),
              ],
            ),
            const NotesListView(),
          ],
        ),
      ),
    );
  }
}
