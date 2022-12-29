import 'package:flutter/material.dart';

import '../models/our_product_item.dart';
import '../widgets/our_product_item_view.dart';

class OurProductsPage extends StatelessWidget {
  const OurProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OurProduct> products = [
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey',
        price: 350,
      ),
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey',
        price: 350,
      ),
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey',
        price: 350,
      ),
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey Excellent Honey Excellent honey',
        price: 350,
      ),
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey',
        price: 350,
      ),
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey',
        price: 350,
      ),
      OurProduct(
        url:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
        title: 'Excellent Honey',
        price: 350,
      ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Our Products'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return OurProductItemView(
            url: products[index].url,
            title: products[index].title,
            price: products[index].price,
          );
        },
        itemCount: products.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
