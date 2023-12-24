import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteItemColor});
  final Color noteItemColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/editNoteViewRoute');
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 24,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: noteItemColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                ),
                child: Text(
                  "Build your career with Mohammad Alhjjjar",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "MAY 12,2023",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
