import 'package:ecommerce_pages/pages/product_details_page.dart';
import 'package:flutter/material.dart';

class OurProductItemView extends StatelessWidget {
  const OurProductItemView({
    super.key,
    required this.url,
    required this.title,
    required this.price,
  });
  final String url;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.star,
      Icons.star,
      Icons.star,
      Icons.star,
      Icons.star,
    ];
    Widget buildIcon(int index) {
      return Icon(
        icons[index],
        color: Colors.yellow,
        size: 12,
      );
    }

    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(
                    imgURL: url,
                    title: title,
                    price: price.toString(),
                    unit: 2),
              ),
            );
          },
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                url,
                height: 70,
                width: 45,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'BDT $price ',
                style: TextStyle(
                    color: Colors.orange[800],
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => buildIcon(map.key),
                    )
                    .toList(),
              ),
            ],
          ),
        ));
  }
}
