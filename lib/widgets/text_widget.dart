import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.size,
    this.weight,
    this.color, this.textAlign,
  });
  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: size ?? 24.0,
          fontWeight: weight ?? FontWeight.bold,
          color: color ?? Colors.black),
    );
  }
}