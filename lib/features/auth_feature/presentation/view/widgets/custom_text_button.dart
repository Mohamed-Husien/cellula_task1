import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.style,
  });
  final void Function()? onPressed;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text, style: style));
  }
}
