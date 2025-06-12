import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> notesList =
              BlocProvider.of<NotesCubit>(context).notesList!;
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ListView.builder(
              // itemCount: state is NotesSuccess ? state.notes.length : 0,
              itemCount: notesList.length,
              padding:  EdgeInsets.zero,
              itemBuilder: (context, index) {
                return CustomNoteItem(noteModel: notesList[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
