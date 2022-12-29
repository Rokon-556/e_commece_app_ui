import 'package:ecommerce_pages/models/homepage_menu_item.dart';
import 'package:ecommerce_pages/pages/our_products_page.dart';
import 'package:ecommerce_pages/pages/profile_page.dart';
import 'package:ecommerce_pages/widgets/home_page_menu_item_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
          borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Profile()));
                  },
                  child: const Text('Profile')),
              const Divider(),
              const Text('Settings'),
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
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
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
          )
        ],
      )),
    );
  }
}
