import 'package:flutter/material.dart';

class CustomStarRating extends StatelessWidget {
  final double rating;
  final void Function(double) onRatingChanged;
  final Color color;

  const CustomStarRating(
      {Key? key,
      this.rating = .5,
      required this.onRatingChanged,
      this.color = Colors.deepOrange})
      : super(key: key);

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = const Icon(Icons.star, color: Colors.grey);
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(Icons.star_half, color: color);
    } else {
      icon = Icon(Icons.star, color: color);
    }
    return InkWell(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(5, (index) => buildStar(context, index)));
  }
}
