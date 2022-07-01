import 'package:flutter/material.dart';

class TitleAndSubtitleText extends StatelessWidget {
  const TitleAndSubtitleText(
      {Key? key,
      required this.keyText,
      required this.valueText,
      this.titleStyle = const TextStyle(fontSize: 20, color: Color(0xff757575)),
      this.subTitleStyle = const TextStyle(fontSize: 20)})
      : super(key: key);

  final String keyText;
  final String valueText;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      /*  mainAxisAlignment: localizationDelegate.currentLocale.languageCode == 'en'
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,*/
      children: [
        Text(
          keyText,
          //localizationDelegate.currentLocale.languageCode == 'en' ? keyText : valueText,
          style: titleStyle,
          textDirection: TextDirection.ltr,
        ),
        Text(
          '$valueText km',
          //localizationDelegate.currentLocale.languageCode == 'en' ? valueText : keyText,
          style: subTitleStyle,
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }
}
