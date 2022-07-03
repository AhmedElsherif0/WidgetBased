import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradiantBackground extends StatelessWidget {
  const GradiantBackground({
    Key? key,
    this.gradiantColor = const [Colors.white, Color(0Xff5DC799)],
    this.width = double.infinity,
    this.height = double.infinity,
    this.child, this.decorationImage,
  }) : super(key: key);

  final List<Color> gradiantColor;
  final double width;
  final double height;
  final Widget? child;
  final DecorationImage? decorationImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(
        child: child,
        decoration: BoxDecoration(
          image: decorationImage ,
          gradient: LinearGradient(
            //begin: const FractionalOffset(0.0, 0.0),
            //   end: const FractionalOffset(1.0, 0.0),
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0],
            colors: gradiantColor,
          ),
        ),
      ),
    );
  }
}
