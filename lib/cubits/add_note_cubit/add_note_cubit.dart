import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';


part 'add_notes_state.dart';
class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());


  addNote(NoteModel note){
    
  }
}