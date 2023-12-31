import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
