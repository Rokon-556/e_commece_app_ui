import 'package:ecommerce_pages/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
  const OfferItem(
      {super.key,
      required this.imgURL,
      required this.percentage,
      required this.price});
  final String imgURL;
  final int percentage;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Image.network(
              imgURL,
              height: 60,
              width: 100,
              fit: BoxFit.cover,
            ),
            Positioned(
                top: 12,
                child: AppButtonOne(
                  text: '- $percentage%',
                  func: () {},
                  width: 35,
                )),
            Positioned(
              bottom: 5,
              left: 20,
              child: Container(
                width: 60,
                height: 17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6), color: Colors.red),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'BDT $price',
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
