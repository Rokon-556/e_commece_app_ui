import 'package:flutter/material.dart';

class OfferProduct {
  final String imgUrl;
  final double price;
  final int percent;
  OfferProduct({
    required this.imgUrl,
    required this.price,
    required this.percent,
  });
}

class OfferType {
  final String type;
  final Widget img;

  OfferType({required this.type, required this.img});
}
