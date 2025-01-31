import 'package:flutter/material.dart';
import 'package:pet_pal/utils/colors.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const SubmitButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        alignment: Alignment.center,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          color: mainPurpleColor,
        ),
        child: TextButton(
          onPressed: onPressed,
          style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
