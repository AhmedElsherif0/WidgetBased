import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final AlignmentGeometry alignment;

  final Color textColor;

  const CustomTextButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.alignment = Alignment.bottomRight,
      this.textColor = Colors.deepOrange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: TextButton(
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            )),
      ),
    );
  }
}
