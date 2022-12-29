import 'package:ecommerce_pages/widgets/image.dart';
import 'package:ecommerce_pages/widgets/increase_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartItems extends StatelessWidget {
  const CartItems(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.size,
      required this.price,
      required this.quantity});
  final String imgUrl;
  final String title;
  final int size;
  final int price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    TextEditingController numInput = TextEditingController(text: '$quantity');
    return Card(
      elevation: 3,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppNetImage(imageUrl: imgUrl),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Size:$size g',
              style: const TextStyle(fontSize: 10),
            ),
            Row(
              children: [
                const Icon(
                  Icons.shopping_bag,
                  size: 12,
                ),
                Text('BDT $price',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.close, size: 16, color: Colors.grey),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IncreaseButton(icon: Icons.remove, func: () {}),
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    width: 40,
                    height: 25,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: numInput,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.5, color: Colors.red),
                        ),
                      ),
                      onChanged: (value) {
                        numInput.text = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  IncreaseButton(icon: Icons.add, func: () {}),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
