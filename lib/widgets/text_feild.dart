import 'package:flutter/material.dart';

class TextInputFeild extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType inputKeybordType;
  final String hintText;

  const TextInputFeild({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.inputKeybordType,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //input style

    final InputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 203, 0, 200)),
        enabledBorder: InputBorder,
        focusedBorder: InputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: inputKeybordType,
      obscureText: isPassword,
    );
  }
}
