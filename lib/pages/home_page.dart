import 'dart:async';

import 'package:ecommerce_pages/models/homepage_menu_item.dart';
import 'package:ecommerce_pages/pages/deals_page.dart';
import 'package:ecommerce_pages/pages/help_center_page.dart';
import 'package:ecommerce_pages/pages/my_cart_page.dart';
import 'package:ecommerce_pages/pages/my_orders_page.dart';
import 'package:ecommerce_pages/pages/no_internet_page.dart';
import 'package:ecommerce_pages/pages/our_products_page.dart';
import 'package:ecommerce_pages/pages/profile_page.dart';
import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:ecommerce_pages/widgets/home_page_menu_item_view.dart';
import 'package:flutter/material.dart';

import '../models/drawer_item.dart';
import '../widgets/drawer_heading.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const NoInternetPage();
  }

  @override
  Widget build(BuildContext context) {
    // int currentPage = 0;
    // final bool changeBool = false;
    var currentPage = HomePage.routeName;

    final List<DrawerItem> drawer = [
      DrawerItem(
          id: 1,
          title: 'Home',
          icon: Icons.home_filled,
          isSelected: currentPage == HomePage.routeName ? true : false),
      DrawerItem(
          id: 2,
          title: 'Profile',
          icon: Icons.person_2_outlined,
          isSelected: currentPage == Profile.routeName ? true : false),
      DrawerItem(
          id: 3,
          title: 'My Cart',
          icon: Icons.shopping_bag,
          isSelected: currentPage == MyCartPage.routeName ? true : false),
      DrawerItem(
          id: 4,
          title: 'My Orders',
          icon: Icons.note,
          isSelected: currentPage == MyOrdersPage.routeName ? true : false),
      DrawerItem(
          id: 5,
          title: 'Contact Us',
          icon: Icons.call,
          isSelected: currentPage == HelpCenterPage.routeName ? true : false),
    ];

    final List<MenuItem> menuItems = [
      MenuItem(title: 'UnexMart', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'OrganicMart', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Fashion', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Gadget', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(
          title: 'Food and Beverage', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Personal Care', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Hygiene Care', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Pet Care', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Pet Care', imgURL: 'assets/images/home_cart.svg'),
      MenuItem(title: 'Pet Care', imgURL: 'assets/images/home_cart.svg'),
    ];

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const DrawerHeading(),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: drawer.length,
                  itemBuilder: (context, index) {
                    return drawerItem(
                      drawer[index].id,
                      drawer[index].title,
                      drawer[index].icon,
                      drawer[index].isSelected,
                    );
                  })
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const OurProductsPage()));
                        },
                        child: HomePageMenuItemView(
                            height: 55,
                            width: 55,
                            url: menuItems[index].imgURL,
                            title: menuItems[index].title),
                      ),
                    );
                  },
                  itemCount: menuItems.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  function: () {
                    Navigator.of(context).pushNamed(DealsPage.routeName);
                  },
                  text: 'Deals for You',
                  color: Color.fromARGB(255, 120, 116, 41),
                  width: 150,
                  fontSize: 25,
                  height: 40),
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(int id, String title, IconData icon, bool isSelected) {
    return Material(
      color: Colors.transparent,
      // color: isSelected ? Colors.indigo[200] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(
            () {
              if (id == 1) {
                Navigator.of(context).pushNamed(HomePage.routeName);
              } else if (id == 2) {
                Navigator.of(context).pushNamed(Profile.routeName);
              } else if (id == 3) {
                Navigator.of(context).pushNamed(MyCartPage.routeName);
              } else if (id == 4) {
                Navigator.of(context).pushNamed(MyOrdersPage.routeName);
              } else {
                Navigator.of(context).pushNamed(HelpCenterPage.routeName);
              }
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(child: Icon(icon, color: Colors.black, size: 20)),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
