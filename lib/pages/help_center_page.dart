import 'package:flutter/material.dart';

import '../widgets/contact_us_tab.dart';
import '../widgets/faq_tab.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(
          width: 60,
          child: Center(child: Text('Hello')),
        ),
        title: const Text('Help Center'),
        centerTitle: true,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: TabBar(
                labelColor: Colors.indigo[600],
                unselectedLabelColor: Colors.indigo[300],
                indicatorSize: TabBarIndicatorSize.label,
                indicator: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                tabs: const [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("FAQ"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Contact Us"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(children: [
            FAQTab(),
            ContactUs(),
          ]),
        ),
      ),
    );
  }
}
