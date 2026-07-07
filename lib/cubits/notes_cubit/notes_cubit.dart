
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';
class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


  fetchAllNotes()  {
   
    try {
      var noteBox = Hive.box<NoteModel>(KNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesSuccess(notes));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
