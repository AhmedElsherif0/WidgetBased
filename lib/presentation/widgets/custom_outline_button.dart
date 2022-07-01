import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.alignment = Alignment.center,
      this.borderColor = Colors.lightBlue,
      this.textStyle = const TextStyle(),
      this.width = 40,
      this.height = 30, this.borderRadius=0.0})
      : super(key: key);

  final void Function()? onPressed;
  final String text;
  final Alignment alignment;
  final Color borderColor;
  final TextStyle textStyle;
  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            fixedSize: Size(width, height),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),),
            side: BorderSide(color: borderColor, width: 1)),
        child: Text(text, style: textStyle, textAlign: TextAlign.start),
      ),
    );
  }
}
