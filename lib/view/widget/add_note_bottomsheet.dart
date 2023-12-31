import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';

import 'package:notes_app/view/widget/add_note_form.dart';

class addnotebottomsheet extends StatelessWidget {
  const addnotebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFalir) {
               Show_SnackBar(context, "oops there was an erorr , please try again");
               
              }
              if(state is AddNoteSuccess){
              BlocProvider.of<NotesCubit>(context).FetchAllNotes();
                Navigator.pop(context);
                Show_SnackBar(context, "The note has been added successfully");
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true :false,
                child: Padding(
                  padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom ),
                  child: add_note_form(),
                ));
            },
          ),
        ),
      ),
    );
  }

  
}
