import 'package:flutter/material.dart';


class KeyAndValueText extends StatelessWidget {
  const KeyAndValueText({Key? key, required this.keyText, required this.valueText})
      : super(key: key);

  final String keyText;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
    /*  mainAxisAlignment: localizationDelegate.currentLocale.languageCode == 'en'
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,*/
      children: [
        Text(
          keyText,
          //localizationDelegate.currentLocale.languageCode == 'en' ? keyText : valueText,
          style: Theme.of(context).textTheme.headline5,
          textDirection: TextDirection.ltr,
        ),
        Text(
          ' : ',
          style: Theme.of(context).textTheme.headline5,
          textDirection: TextDirection.ltr,
        ),
        Text( valueText,
          //localizationDelegate.currentLocale.languageCode == 'en' ? valueText : keyText,
          style: Theme.of(context).textTheme.headline5,
          textDirection: TextDirection.ltr,
        )
      ],
    );
  }
}
