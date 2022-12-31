import 'package:ecommerce_pages/helpers/dialog_helper.dart';
import 'package:ecommerce_pages/pages/home_page.dart';
import 'package:ecommerce_pages/pages/my_orders_page.dart';
import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_dialog.dart';
import '../widgets/text_widget.dart';

class ConfirmationPage extends StatelessWidget {
  static const routeName = '/confirmation-page';
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/check-7059.svg',
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 25,
          ),
          const TextWidget(
            text: 'Order Confirmed!!!',
            size: 24,
          ),
          const SizedBox(
            height: 30,
          ),
          const TextWidget(
            text: 'Thank you!!',
            size: 18,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
            text: 'Your order has been successfully placed',
            size: 18,
            weight: FontWeight.normal,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              function: () {
                DialogHelper.showAlertDialog(context);
                // CustomDialog();
                print('hello');
                // Navigator.of(context).pushNamed(HomePage.routeName);
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => const HomePage()));
              },
              text: 'Continue Shopping',
              color: const Color(0xff014ea0),
              width: 200,
              fontSize: 16,
              height: 35),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
              function: () {
                Navigator.of(context).pushNamed(MyOrdersPage.routeName);

                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const MyOrdersPage()));
              },
              text: 'View All Orders',
              color: const Color(0xff014ea0),
              width: 200,
              fontSize: 16,
              height: 35),
        ],
      )),
    );
  }
}
