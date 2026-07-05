import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'add_notes_state.dart';
class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());
}