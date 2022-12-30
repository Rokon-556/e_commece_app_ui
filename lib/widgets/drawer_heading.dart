import 'package:flutter/material.dart';

class DrawerHeading extends StatefulWidget {
  const DrawerHeading({super.key});

  @override
  State<DrawerHeading> createState() => _DrawerHeadingState();
}

class _DrawerHeadingState extends State<DrawerHeading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 96, 93, 32),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/splash.jpg'),
            radius: 45,
          ),
          SizedBox(
            height: 10,
          ),
          const Text(
            'Rokon Rahman',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'rokon@gmail.com',
            style: TextStyle(color: Colors.grey[200], fontSize: 13),
          )
        ],
      ),
    );
  }
}
