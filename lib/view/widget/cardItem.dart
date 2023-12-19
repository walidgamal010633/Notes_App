import 'package:flutter/material.dart';




class cardItem extends StatelessWidget {
  const cardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff7ab9de),
      ),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(top: 28,bottom: 12),
              child: Text(
                "flutter",
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
            ),
            
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "developer",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 42,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(
              padding: const EdgeInsets.only(right: 28,bottom: 24),
              child: Text("12/9/2023",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),),
            )
          ],)
        ],
      ),
    );
  }
}
