import 'package:flutter/material.dart';

enum PaymentMethod { paypal, creditCard, other }

class RadioButtonListTile extends StatelessWidget {
  const RadioButtonListTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.text,
    required this.iconData,
    this.color = Colors.deepOrange,
    this.backGroundColor = const Color(0xffffebeb),
  }) : super(key: key);

  final PaymentMethod value;
  final String text;
  final Icon iconData;
  final Color color;
  final Color backGroundColor;

  final PaymentMethod groupValue;

  final void Function(PaymentMethod?) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: backGroundColor,
      shape: Border.all(
          color: value == groupValue ? color : const Color(0xffffffff)),
      title: Text(text),
      leading: Radio(
        focusColor: Colors.grey,
        hoverColor: Colors.grey,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: color,
      ),
      trailing: iconData,
    );
  }
}
