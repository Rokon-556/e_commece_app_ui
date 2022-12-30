import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ecommerce_pages/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    Connectivity connectivity = Connectivity();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 34, 84),
      body: StreamBuilder<ConnectivityResult>(
        stream: connectivity.onConnectivityChanged,
        builder: (context, snapshot) {
          final connectivityResult = snapshot.data;
          if (connectivityResult == ConnectivityResult.none ||
              connectivityResult == null) {
            return SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/images/owl.svg',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Oops, no internet!',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'No internet connection found,\nplease check your connection',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            );
          }
          return const HomePage();
        },
      ),
    );
  }
}
