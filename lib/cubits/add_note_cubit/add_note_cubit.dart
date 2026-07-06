import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
  var noteBox = Hive.box<NoteModel>(KNoteBox);
   
     await noteBox.add(note);
     emit(AddNotesSuccess());
} on Exception catch (e) {
  emit(AddNotesFailure(e.toString()));
}
   
  }
}
