import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'package:note_app/views/widgets/edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              widget.noteModel.save();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.noteModel.title,
          ),
          SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.noteModel.subTitle,
            maxLines: 5,
          ),
          SizedBox(height: 16),
          EditeNoteColorsList(noteModel: widget.noteModel),
        ],
      ),
    );
  }
}
