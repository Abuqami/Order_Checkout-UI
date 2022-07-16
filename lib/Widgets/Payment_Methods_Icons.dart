import 'package:flutter/material.dart';



class Payment_Methods_Icons extends StatelessWidget {

  const Payment_Methods_Icons({ required this.methodIcon, required this.iconColor});

  final  IconData? methodIcon;
  final   Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Icon(
      methodIcon,
      color: iconColor,
    );
  }
}