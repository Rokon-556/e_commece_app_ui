import 'dart:async';

import 'package:ecommerce_pages/pages/my_cart_page.dart';
import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:ecommerce_pages/widgets/image.dart';
import 'package:ecommerce_pages/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dot_indicator.dart';
import '../widgets/increase_button.dart';

class ProductDetailsPage extends StatefulWidget {
  static const routeName = '/details-page';

  const ProductDetailsPage(
      {super.key,
      required this.imgURL,
      required this.title,
      required this.price,
      required this.unit});
  final String imgURL;
  final String title;
  final String price;
  final int unit;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_pageIndex < 3) {
        _pageIndex++;
      } else {
        _pageIndex = 0;
      }

      _pageController.animateToPage(
        _pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final image = [
      'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
      'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
      'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
    ];
    const String description =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 180,
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: PageView.builder(
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return AppNetImage(
                      imageUrl: image[index],
                      height: 150,
                      width: double.infinity,
                    );
                  },
                  itemCount: image.length,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                ),
              ),
              Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ...List.generate(
                    image.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(3),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(23.0),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: widget.title,
                      size: 22,
                    ),
                    const TextWidget(
                      text: '(132 Reviews)',
                      size: 12,
                      weight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.shopping_bag,
                          size: 16,
                          color: Color(0xff014ea0),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextWidget(
                          text: 'BDT ${widget.price}',
                          size: 16,
                        ),
                        // Text('BDT $price'),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: TextWidget(
                            text: '4.5 Rates',
                            color: Colors.grey,
                            size: 14,
                            weight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // ),
            ],
          ),
        ),
        //Description
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: SizedBox(
            height: 60,
            child: TextWidget(
              textAlign: TextAlign.center,
              text: description,
              weight: FontWeight.normal,
              size: 12,
            ),
          ),
        ),
        //Size
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              child: const Text(
                'Size',
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                          function: () {},
                          text: '125g',
                          color: Colors.orange,
                          width: 55,
                          fontSize: 14,
                          height: 18),
                      CustomButton(
                          function: () {},
                          text: '250g',
                          color: const Color(0xff014ea0),
                          width: 50,
                          fontSize: 14,
                          height: 18),
                    ]),
              ),
            ),
          ]),
        ),
        // Item Change Button

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.56,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IncreaseButton(icon: Icons.remove, func: () {}),
                  const SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 40,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.red, width: 0.5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(2),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${widget.unit}',
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  IncreaseButton(icon: Icons.add, func: () {}),
                ],
              ),
            ),
            CustomButton(
              function: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyCartPage()));
              },
              text: 'Cart',
              color: Colors.orange,
              width: 100,
              fontSize: 18,
              height: 35,
            ),
          ]),
        ),
      ]),
    );
  }
}
