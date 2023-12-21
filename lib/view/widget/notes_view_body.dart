import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_search_icon.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        children: [
          AppBar(
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
        ],
      ),
    );
  }
}
