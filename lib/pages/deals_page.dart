import 'package:ecommerce_pages/models/offer_product.dart';
import 'package:ecommerce_pages/widgets/offer_item.dart';
import 'package:flutter/material.dart';

class DealsPage extends StatelessWidget {
  const DealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OfferType> type = [
      OfferType(type: 'Special Offer', img: const Text('Sticker')),
      OfferType(type: 'Special Offer', img: const Text('Sticker2')),
    ];

    final List<OfferProduct> products = [
      OfferProduct(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          price: 350,
          percent: 45),
      OfferProduct(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          price: 350,
          percent: 45),
      OfferProduct(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          price: 350,
          percent: 45),
      OfferProduct(
          imgUrl:
              'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
          price: 350,
          percent: 45),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Deals You Can\'t Miss'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SingleOfferItem(products: products),
            SingleOfferItem(products: products),
            SingleOfferItem(products: products),
          ],
        ));
  }
}

class SingleOfferItem extends StatelessWidget {
  const SingleOfferItem({
    super.key,
    required this.products,
  });

  final List<OfferProduct> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisSize: MainAxisSize.min, children: const [
              Text(
                'Special Offer Available',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Widget'),
            ]),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return OfferItem(
                    imgURL: products[index].imgUrl,
                    percentage: products[index].percent,
                    price: products[index].price);
              }),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
