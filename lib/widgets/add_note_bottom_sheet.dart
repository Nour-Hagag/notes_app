import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const CustomTextField(hint: "Title"),
            const SizedBox(height: 16),
            const CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomAddButton(onTap: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
