import 'package:ecommerce_pages/models/faq.dart';
import 'package:flutter/material.dart';

class FAQTab extends StatelessWidget {
  const FAQTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FAQ> faq = [
      FAQ(
          isExpand: false,
          title: 'Refund',
          description:
              'desert tobacco melted pupil rich bean kitchen paragraph thread wave buried energy strange weight lack daily frighten soldier example gone are earn given mainly'),
      FAQ(
          isExpand: false,
          title: 'How To Pay',
          description:
              'desert tobacco melted pupil rich bean kitchen paragraph thread wave buried energy strange weight lack daily frighten soldier example gone are earn given mainly'),
      FAQ(
          isExpand: false,
          title: 'Delivery Option',
          description:
              'desert tobacco melted pupil rich bean kitchen paragraph thread wave buried energy strange weight lack daily frighten soldier example gone are earn given mainly'),
      FAQ(
          isExpand: false,
          title: 'How do I return',
          description:
              'desert tobacco melted pupil rich bean kitchen paragraph thread wave buried energy strange weight lack daily frighten soldier example gone are earn given mainly'),
      FAQ(
          isExpand: false,
          title: 'Complains Process',
          description:
              'desert tobacco melted pupil rich bean kitchen paragraph thread wave buried energy strange weight lack daily frighten soldier example gone are earn given mainly'),
    ];

    return ListView.builder(
      itemCount: faq.length,
      itemBuilder: (context, index) => Card(
        elevation: 2,
        child: ExpansionTile(
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          childrenPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          title: Text(
            faq[index].title,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                faq[index].description,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
