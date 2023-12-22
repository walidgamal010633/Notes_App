import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/NotesCubit/notes_cubit.dart';
import 'package:notes_app/view/widget/custom_appbar.dart';
import 'package:notes_app/view/widget/note_listview.dart';

class noteViewBody extends StatefulWidget {
  const noteViewBody({super.key});

  @override
  State<noteViewBody> createState() => _noteViewBodyState();
}

class _noteViewBodyState extends State<noteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).FetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            children: [
              SizedBox(height: 40,),
              customappbar(icon: Icon(Icons.search,size: 28,color: Colors.grey,),
              text: "Notes",
              ),
              SizedBox(height: 20,),
              Expanded(child: notelistview()),
            ],
          ),
      ),
    );
  }
}