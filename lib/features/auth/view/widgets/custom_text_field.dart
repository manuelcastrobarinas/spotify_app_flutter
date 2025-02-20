import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;
  
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscureText,
      validator : (value) {
        if(value!.trim().isEmpty) return '$hintText is missing';
        return null; 
      },
      decoration: InputDecoration(
        hintText: hintText
      ),
    );
  }
}