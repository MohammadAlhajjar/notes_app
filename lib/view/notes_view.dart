import 'package:flutter/material.dart';

import 'widget/add_note_bottom_sheet.dart';
import 'widget/custom_search_icon.dart';
import 'widget/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff52ebd6),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
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
                CustomSearchIcon(
                  iconData: Icons.search,
                ),
              ],
            ),
            const NotesListView(),
          ],
        ),
      ),
    );
  }
}
