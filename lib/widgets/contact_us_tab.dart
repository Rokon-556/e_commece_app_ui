import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final List<Map<String, dynamic>> contact = List.generate(
      4,
      (index) => {
            "title": "wonderful",
            "Content":
                "tone possible wooden map method shown scale faster mistake fierce label duck bush burst sleep shelf somewhere fourth pig remove anybody ran let separate",
          });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        //Contact Us
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Contact Us',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: contact.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                child: ExpansionTile(
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  title: Text(
                    contact[index]['title'],
                  ),
                  children: [
                    Text(
                      contact[index]['Content'],
                    ),
                  ],
                ),
              );
            }),
        //Facing Issue
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'What issue are you facing',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: contact.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                child: ExpansionTile(
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  title: Text(
                    contact[index]['title'],
                  ),
                  children: [
                    Text(
                      contact[index]['Content'],
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
