// ignore_for_file: must_be_immutable, body_might_complete_normally_nullable
import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({super.key,  this.hintText, this.onChange, this.obscureText = false});

Function(String)? onChange;
  String? hintText;

  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if(data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
