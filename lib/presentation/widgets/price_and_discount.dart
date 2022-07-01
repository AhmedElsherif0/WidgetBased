import 'package:flutter/material.dart';

class PriceAndDiscount extends StatelessWidget {
  const PriceAndDiscount(
      {Key? key,
      required this.price,
      required this.discountPrice,
      this.discountPriceStyle = const TextStyle(color: Colors.red) ,
      this.priceStyle =  const TextStyle(color: Colors.grey)})
      : super(key: key);

  final num? price;
  final num? discountPrice;
  final TextStyle discountPriceStyle;
  final TextStyle? priceStyle;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.start,
      children: [
        if(price != null)
        Text('\$${price}',
            style: priceStyle),
        const SizedBox(width: 12),
        if (price != discountPrice)
          Text('$discountPrice',
              style: discountPriceStyle)
      ],
    );
  }
}
