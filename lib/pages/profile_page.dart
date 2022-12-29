import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
    static const routeName = '/profile-page';

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rokon Rahman',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Active Now',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.green,
                            size: 12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const CircleAvatar(
                  radius: 73,
                  backgroundColor: Colors.indigoAccent,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  buildRow(Icons.list, 'My Orders'),
                  buildRow(Icons.list, 'My Reviews'),
                  buildRow(Icons.list, 'My Cancellation'),
                  buildRow(Icons.list, 'My Cancellation'),
                  buildRow(Icons.list, 'My Cancellation'),
                  buildRow(Icons.list, 'My Cancellation'),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                buildColumn(Icons.location_on, 'Edit PRofile'),
                buildColumn(Icons.location_on, 'Edit PRofile'),
                buildColumn(Icons.location_on, 'Edit PRofile'),
                buildColumn(Icons.location_on, 'Edit PRofile'),
              ],
            )
          ],
        ),
      ),
    );
  }

  buildColumn(IconData icon, String title) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListTile(
            // contentPadding: EdgeInsets.all(0),
            // horizontalTitleGap: 0.0,

            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 11.0),
              child: Icon(
                icon,
                color: Colors.indigo,
                size: 20,
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // minLeadingWidth: 10,
          ),
        ),
      ],
    );
  }

  buildRow(IconData icon, String title) {
    return SizedBox(
      height: 90,
      width: 70,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 40,
              ),
            ),
            Text(
              title,
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
