import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {required this.hintText,
      required this.textInputType,
      this.prefixIcon,
      this.obscureText,
      this.validator,
      this.onSaved,
      this.controller,
      this.suffixIcon,
      Key? key})
      : super(key: key);

  final String? hintText;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final bool? obscureText;
  final FormFieldValidator? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      child: TextFormField(
          validator: validator,
          maxLines: 1,
          keyboardType: textInputType,
          controller: controller,
          onSaved: onSaved,
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              isDense: true,
              filled: true,
              ///background color
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: null,
              suffixIcon: suffixIcon,
              border: _underlineBorder(),
              prefixIconColor: Colors.grey,
              // hintTextDirection: TextDirection.ltr,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              enabledBorder: _underlineBorder(),
              focusedBorder: _underlineBorder(),
          focusedErrorBorder: _outlineInputBorder(),
          errorBorder: _outlineInputBorder(),
              )),
    );
  }
/// you can Customize the border from those two function.
  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
        gapPadding: 20);
  }

  UnderlineInputBorder _underlineBorder() {
    return  UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade500, width: 2));
  }
}
