import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class custom_icondelete extends StatelessWidget {
  const custom_icondelete({super.key, required this.note});
  final note_model note;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          
            context: context,
            builder: (BuildContext builder) {
              return AlertDialog(
                backgroundColor: Color.fromARGB(255, 171, 217, 238),
                title: const Text('Please Confirm',
                style: TextStyle(color: Colors.black,fontSize: 30,
                fontWeight: FontWeight.bold,
                ),),
                content: const Text(
                  'Are you sure to remove the Notes ?',
                  style: TextStyle(color: Colors.black,fontSize: 18,),
                ),
                actions: [
                  // The "Yes" button
                  TextButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).FetchAllNotes();
                        Show_SnackBar(
                            context, "The note has been deleted successfully");
                        Navigator.of(context).pop();
                      },
                      child: const Text('Yes',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('No',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)))
                ],
              );
            });
      },
      icon: Icon(
        Icons.delete,
        color: Colors.black,
        size: 42,
      ),
    );
  }
}
