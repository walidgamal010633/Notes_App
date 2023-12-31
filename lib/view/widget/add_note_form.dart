import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';

import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/view/widget/color%20list.dart';
import 'package:notes_app/view/widget/custom_bottom.dart';
import 'package:notes_app/view/widget/custom_textfield.dart';

class add_note_form extends StatefulWidget {
  const add_note_form({
    super.key,
  });

  @override
  State<add_note_form> createState() => _add_note_formState();
}

class _add_note_formState extends State<add_note_form> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, subtitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          custom_taxtfield(
              onSaved: (value) {
                titel = value;
              },
              hintText: "Title"),
          SizedBox(
            height: 20,
          ),
          custom_taxtfield(
            onSaved: (value) {
              subtitel = value;
            },
            hintText: "Subtitle",
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          colorlistview(
            
          ),
          SizedBox(
            height: 16,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return custom_bottom(
                isloding: state is AddNoteLoading ? true : false,
                ontap: () {
                  DateTime now = DateTime.now();
                  DateFormat formatter = DateFormat('yyyy-MM-dd');
                  String formattedDate = formatter.format(now);
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    note_model note = note_model(
                        titel: titel!,
                        subtitel: subtitel!,
                        date: formattedDate,
                        Color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  }
                  {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
