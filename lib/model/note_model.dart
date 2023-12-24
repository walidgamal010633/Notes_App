import 'package:flutter/material.dart';
import 'package:hive/hive.dart';



part 'note_model.g.dart';

@HiveType(typeId: 1)
class note_model extends HiveObject {
  @HiveField(0)
   String titel;
  @HiveField(1)
   String subtitel;
  @HiveField(2)
   int Color;
  @HiveField(3)
  final String date;
  note_model(
      {required this.titel,
      required this.subtitel,
      required this.date,
      required this.Color});
}
