import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key,  this.responsiveHeight =150.0}) : super(key: key);

  final double responsiveHeight;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: ClipPath(
        clipper: const CustomClipperAppBar(),
        child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.amberAccent),
            child: Column(
              children: [Text('Welcome')],
            )),
      ),
      preferredSize:  Size.fromHeight(kToolbarHeight + responsiveHeight),
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight + responsiveHeight);
}

class CustomClipperAppBar extends CustomClipper<Path> {
  const CustomClipperAppBar({Key? key});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.3750000);
    path.quadraticBezierTo(size.width * 0.3000000, size.height * 0.3750000,
        size.width * 0.3000000, size.height * 0.3750000);
    path.cubicTo(
        size.width * 0.4000000,
        size.height * 0.625000,
        size.width * 0.6000000,
        size.height * 0.625000,
        size.width * 0.7000000,
        size.height * 0.3750000);
    path.quadraticBezierTo(size.width * 0.7000000, size.height * 0.3750000,
        size.width, size.height * 0.3750000);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
