import 'package:flutter/material.dart';

class IncreaseButton extends StatelessWidget {
  const IncreaseButton({super.key, required this.icon, required this.func});
  final IconData icon;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Center(
        child: InkWell(
          onTap: func,
          child: Icon(
            icon,
            color: Colors.white,
            size: 14,
          ),
        ),
      ),
    );
  }
}
