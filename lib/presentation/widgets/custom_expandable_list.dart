import 'package:flutter/material.dart';

class CustomExpandableList extends StatelessWidget {
  const CustomExpandableList(
      {Key? key,
      required this.itemsText,
      required this.index,
      this.iconColor = Colors.deepOrange,
      required this.expandableText})
      : super(key: key);

  final String expandableText;
  final String itemsText;
  final int index;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.all(12),
                backgroundColor: Colors.green,
                iconColor: iconColor,
                collapsedIconColor: iconColor,
                title: Text(expandableText,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center),
                children: List<Widget>.generate(
                  index,
                  (_) => ListTile(
                    title: Text(itemsText, textAlign: TextAlign.center),
                    trailing: const Icon(null)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
