import 'package:go_router/go_router.dart';
import 'package:notes_app/view/edit_note_view.dart';
import 'package:notes_app/view/notes_view.dart';

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NotesView(),
      routes: [
        GoRoute(
          path: 'editNoteViewRoute',
          builder: (context, state) => const EditNoteView(),
        ),
      ],
    ),
  ],
);
