import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageMenuItemView extends StatelessWidget {
  const HomePageMenuItemView({
    super.key,
    required this.url,
    required this.title,
    this.height,
    this.width,
  });
  final String url;
  final String title;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff014ea0),
      elevation: 0,
      child: SizedBox(
        height: height ?? 100,
        width: width ?? 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              url,
              height: 33,
              width: 33,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
