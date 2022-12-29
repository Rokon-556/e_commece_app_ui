import 'package:flutter/material.dart';

class AppButtonOne extends StatelessWidget {
  final double? width;
  final String text;
  final VoidCallback func;
  const AppButtonOne(
      {super.key, this.width, required this.text, required this.func});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: width,
        height: 15,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Colors.red),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
