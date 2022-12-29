import 'package:ecommerce_pages/pages/home_page.dart';
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
      home: const HomePage(),
    );
  }
}
