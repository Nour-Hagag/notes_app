import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(.5),
        onPressed: () {},
        child: const Icon(Icons.add, size: 40),
      ),
      body: const NotesViewBody(),
    );
  }
}
