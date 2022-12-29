import 'package:ecommerce_pages/models/cart_item.dart';
import 'package:ecommerce_pages/pages/confirmation_page.dart';
import 'package:ecommerce_pages/pages/product_details_page.dart';
import 'package:ecommerce_pages/widgets/cart_items.dart';
import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:ecommerce_pages/widgets/total_amount.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  static const routeName = '/cart-page';

  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController promoController = TextEditingController();
    final List<CartItem> item = [
      CartItem(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          title: 't-shirt',
          size: 3,
          price: 20,
          quantity: 1),
      CartItem(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          title: 't-shirt ',
          size: 3,
          price: 90,
          quantity: 1),
      CartItem(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          title: 't-shirt',
          size: 3,
          price: 25,
          quantity: 10),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'My Cart',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(ProductDetailsPage.routeName);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => ProductDetailsPage(
                  //           imgURL: item[index].imgUrl,
                  //           title: item[index].title,
                  //           price: item[index].price.toString(),
                  //           unit: item[index].quantity,
                  //         )));
                },
                child: CartItems(
                  imgUrl: item[index].imgUrl,
                  title: item[index].title,
                  size: item[index].size,
                  price: item[index].price,
                  quantity: item[index].quantity,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: TextFormField(
                controller: promoController,
                cursorWidth: 2,
                decoration: InputDecoration(
                  hintText: 'Promo Code',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CustomButton(
                        height: 10,
                        function: () {},
                        text: 'Apply',
                        color: const Color(0xff014ea0),
                        width: 70.0,
                        fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: const [
                TotalAmount(text: 'Subtotal', amount: 610),
                TotalAmount(text: 'Shipping', amount: 50),
                TotalAmount(text: 'Total', amount: 660),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
                function: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ConfirmationPage(),
                    ),
                  );
                },
                text: 'Proceed To Check Out',
                color: Colors.orange,
                width: 200,
                fontSize: 18,
                height: 40),
          )
        ],
      ),
    );
  }
}
