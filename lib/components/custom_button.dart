// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({this.onTap, required this.text});
VoidCallback? onTap;
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        height: 40,
        child:  Center(child: Text(text)),
      ),
    );
  }
}
