import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';

class coloritem extends StatelessWidget {
  const coloritem({super.key, required this.isActive, required this.colorr});
  final bool isActive;
  final Color colorr;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: isActive
            ? CircleAvatar(
                radius: 38,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: colorr,
                ),
              )
            : CircleAvatar(
                radius: 38,
                backgroundColor: colorr,
              ));
  }
}

class colorlistview extends StatefulWidget {
  const colorlistview({super.key});

  @override
  State<colorlistview> createState() => _colorlistviewState();
}

class _colorlistviewState extends State<colorlistview> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: KColorss.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
               BlocProvider.of<AddNoteCubit>(context).color =KColorss[index];
                setState(() {
                   currentindex =index;
                });
              },
              child: coloritem(
                colorr:KColorss[index] ,
                isActive: currentindex == index,
              ),
            );
          }),
    );
  }
}
