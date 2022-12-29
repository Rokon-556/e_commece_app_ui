import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class OrderItemView extends StatelessWidget {
  const OrderItemView({
    super.key,
    required this.title,
    required this.imgURL,
    required this.price,
  });
  final String title;
  final String imgURL;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: _decoration(8),
              margin: const EdgeInsets.only(right: 12),
              child: Image.network(
                imgURL,
                fit: BoxFit.cover,
              ),
            ),

            //
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 5),
                  Text('৳ $price'),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.close,
                              color: Colors.grey,
                              size: 14,
                            ),
                            Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            )
                          ],
                        ),
                        CustomButton(
                            function: () {},
                            text: 'Delivered',
                            color: Colors.red,
                            width: 80,
                            fontSize: 14,
                            height: 25),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _decoration(double radius) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(radius),
    );
  }
}
