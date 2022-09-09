import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double hPadding;
  final double vPadding;
  final Color bColor;
  final Color tColor;
  final double fontSize;
  const PrimaryButton({
    Key? key, required this.text, this.onPressed, required this.hPadding, required this.vPadding, required this.bColor, required this.tColor, required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all<Color>(
            bColor),
        shape: MaterialStateProperty.all<
            RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(12.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: hPadding,vertical: vPadding),
        child: Text('$text',
            style: TextStyle(
                color: tColor,
                fontSize:fontSize,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}