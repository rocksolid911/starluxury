import 'package:flutter/material.dart';

class CustomCont extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const CustomCont({
    Key? key,
    required this.size, required this.child, required this.height, required this.width,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        decoration: BoxDecoration(
          color:  Color(0xff3a3b3d),
          borderRadius: BorderRadius.circular(10),
        ),
        child:child,
      ),
    );
  }
}