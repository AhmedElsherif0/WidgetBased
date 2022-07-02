import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {required this.image,
      required this.title,
      this.firstIcon = const Icon(Icons.chat),
      this.secondIcon = const Icon(Icons.phone),
      Key? key,
      required this.onPressedFirstIcon,
      required this.rateReview,
      this.rateTextStyle = const TextStyle(color: Colors.grey),
      required this.onPressedSecondIcon,
      this.backgroundColor = Colors.white,
      required this.placeHolderImage})
      : super(key: key);

  final String? image;
  final String? title;
  final Widget? firstIcon;
  final Widget? secondIcon;
  final VoidCallback onPressedFirstIcon;
  final VoidCallback onPressedSecondIcon;
  final double rateReview;
  final TextStyle rateTextStyle;
  final Color backgroundColor;
  final String placeHolderImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: AspectRatio(
                aspectRatio: 0.8,
                child: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: FadeInImage(
                    fadeInCurve: Curves.bounceIn,
                    placeholder: AssetImage(placeHolderImage),
                    image: NetworkImage(image!),
                    fit: BoxFit.cover,
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset(placeHolderImage);
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 5),
                  FittedBox(
                    child: Text(
                      title!,
                      style: Theme.of(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text('$rateReview', style: rateTextStyle),
                    ],
                  ),
                  const Spacer(flex: 4)
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: IconButton(
                      onPressed: onPressedFirstIcon,
                      icon: firstIcon!,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: IconButton(
                        onPressed: onPressedSecondIcon,
                        icon: secondIcon!,
                        color: secondIcon != null ? Colors.white : Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
