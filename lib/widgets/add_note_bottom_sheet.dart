import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
             SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'Title', 
            ),
             SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'Content', 
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
             SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

