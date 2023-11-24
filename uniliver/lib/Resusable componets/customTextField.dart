import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String labelText;
  const CustomTextFeild({super.key, required this.labelText});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      width: 325,
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
        ),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
