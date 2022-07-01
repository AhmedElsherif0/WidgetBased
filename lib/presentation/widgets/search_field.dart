import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.controller,
    required this.onChanged,
    this.backgroundColor = Colors.white,
    this.suffixIcon = const Icon(Icons.search, color: Colors.grey),
  }) : super(key: key);

  final TextEditingController controller;
  final void Function(String) onChanged;
  final Color backgroundColor;
  final Widget? suffixIcon ;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:  const EdgeInsets.symmetric(horizontal: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            border: _underlineBorder(),
            focusedBorder: _underlineBorder(),
            enabledBorder: _underlineBorder(),
            hintText: "Search ",
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
  UnderlineInputBorder _underlineBorder() {
    return  UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade500, width: 2));
  }

}
