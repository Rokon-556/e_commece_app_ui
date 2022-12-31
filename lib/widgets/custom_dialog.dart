import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 1,
      // child: Container(),
      child: _buildAlert(context),
    );
  }

  _buildAlert(BuildContext context) => Container(
        height: 350,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            // color: Color.fromARGB(255, 26, 34, 84),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Lottie.asset('assets/animations/check.json',
                width: 100, height: 100, fit: BoxFit.cover),

          ),
          const Text(
            'Hurrah!',
            style: TextStyle(
                letterSpacing: 1.3,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 34, 141, 95)),
          ),
          const SizedBox(
            height: 13,
          ),
          const Text(
            'Product has been added\nto your cart successfully',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              function: () {},
              text: 'Done',
              color: Color.fromARGB(255, 34, 141, 95),
              width: 150,
              fontSize: 20,
              height: 30),
        ]),
      );
}
