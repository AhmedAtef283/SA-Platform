import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.suffixIcon,
    this.isShown = false,
    this.onSuffixIconPressed,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    required this.keyboardType,
  });
  final String? Function(String?)? validator;
  final void Function()? onSuffixIconPressed;
  final TextEditingController? controller;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final bool isShown;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: isShown,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon:  Icon(prefixIcon),
        suffixIcon: IconButton(
          onPressed: onSuffixIconPressed,
          icon: Icon(suffixIcon),
        ),
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
