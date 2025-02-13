import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
    this.width,
    this.style,
  });
  final Color backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  final double? width;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 64,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(32),
          ),
        ),
        child: Text(
          text,
          style: style ??
              TextStyle(
                color: textColor,
                fontSize: fontSize,
              ),
        ),
      ),
    );
  }
}
