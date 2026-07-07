import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bootom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Color(0xff55EAD6),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16) ,
            ),
            context: context,
            builder: (context) {
              return  AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}


