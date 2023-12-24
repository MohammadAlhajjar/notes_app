import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/custom_text_field.dart';

import 'widget/custom_search_icon.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xff1c1b1f),
        title: const Text(
          "Edit Note",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CustomSearchIcon(
              iconData: Icons.check,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomTextField(
              hintText: "Title",
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
