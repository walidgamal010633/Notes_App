import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';



class custom_bottom extends StatelessWidget {
  const custom_bottom({super.key, this.ontap, this.isloding = false});
  final void Function()? ontap;
  final bool isloding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kprimary_color,
        ),
        child: Center(
          child: isloding
              ? SizedBox(
                height: 30,
                width: 30,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
              : const Text(
                  "add",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
        ),
      ),
    );
  }
}
