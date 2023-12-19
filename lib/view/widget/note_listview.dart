import 'package:flutter/material.dart';
import 'package:notes_app/view/widget/cardItem.dart';

class notelistview extends StatelessWidget {
  const notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: cardItem(),
          );
        },
      ),
    );
  }
}
