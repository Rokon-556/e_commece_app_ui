import 'package:ecommerce_pages/pages/confirmation_page.dart';
import 'package:ecommerce_pages/pages/deals_page.dart';
import 'package:ecommerce_pages/pages/help_center_page.dart';
import 'package:ecommerce_pages/pages/home_page.dart';
import 'package:ecommerce_pages/pages/my_cart_page.dart';
import 'package:ecommerce_pages/pages/my_orders_page.dart';
import 'package:ecommerce_pages/pages/no_internet_page.dart';
import 'package:ecommerce_pages/pages/our_products_page.dart';
import 'package:ecommerce_pages/pages/product_details_page.dart';
import 'package:ecommerce_pages/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black54,
          backgroundColor: Color(
            0xfff2d0d0,
          ),
          iconTheme: IconThemeData(
            color: Color(0xff014ea0),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xfff7e6e6),
      ),
      // home: const HelpCenterPage(),
      // home: const HomePage(),
      home: NoInternetPage(),
      routes: {
        ConfirmationPage.routeName: ((context) => const ConfirmationPage()),
        DealsPage.routeName: ((context) => const DealsPage()),
        MyCartPage.routeName: ((context) => const MyCartPage()),
        MyOrdersPage.routeName: ((context) => const MyOrdersPage()),
        OurProductsPage.routeName: ((context) => const OurProductsPage()),
        // ProductDetailsPage.routeName:((context)=>ProductDetailsPage()),
        Profile.routeName: ((context) => const Profile()),
      },
    );
  }
}
