import 'package:cellula_task1_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      maxLines: maxLines,
      cursorColor: const Color(0xff007BFF),
      cursorErrorColor: Colors.red,
      style: Styles.textStyle16,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        filled: true,
        fillColor: const Color(0xff242D4A),
        border: buildBorder(),
        label: Text(hint),
        labelStyle: Styles.textStyle14.copyWith(color: Colors.white),
        errorBorder: buildBorder(Colors.redAccent),
        enabledBorder: buildBorder(const Color(0xff007BFF)),
        focusedBorder: buildBorder(const Color(0xff007BFF)),
        focusedErrorBorder: buildBorder(Colors.redAccent),
        errorStyle: Styles.textStyle14.copyWith(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
        ),
        hintText: hint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: Styles.textStyle14.copyWith(
          color: Colors.white70,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ),
    );
  }
}
