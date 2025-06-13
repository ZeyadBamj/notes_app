import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;
  fetchAllNotes() {
    // try {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    // await notesBox.add(note);
    notesList = notesBox.values.toList();

    emit(NotesSuccess());
    // emit(NotesSuccess(notes: notesList));
    // } catch (e) {
    // AddNoteFailure(errMessage: e.toString());
    // emit(NotesFailure(errMessage: e.toString()));
    // }
  }
}
