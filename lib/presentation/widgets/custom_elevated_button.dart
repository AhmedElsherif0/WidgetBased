import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.backgroundColor = Colors.deepOrange,
      this.textStyle = const TextStyle(fontSize: 20),
      this.height,
      this.width,
      this.alignment = Alignment.center,
      this.borderRadius = 20})
      : super(key: key);

  final void Function() onPressed;
  final String text;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? height;
  final Alignment alignment;

  final double? width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          child: Text(text, style: textStyle),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          )),
    );
  }
}
