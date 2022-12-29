import 'package:ecommerce_pages/models/my_order.dart';
import 'package:ecommerce_pages/models/order_info.dart';
import 'package:ecommerce_pages/widgets/custom_button.dart';
import 'package:ecommerce_pages/widgets/order_item_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/my_order_info.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({
    super.key,
  });
  static ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final yesterday = DateTime.now().subtract(const Duration(days: -1));
    final today = DateTime.now();
    final List<MyOrderItem> items = [
      MyOrderItem(
        title: 'Polo T-shirt',
        price: 350,
        quantity: 1,
        imgUrl:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
      ),
      MyOrderItem(
        title: 'Polo T-shirt',
        price: 200,
        quantity: 3,
        imgUrl:
            'https://img.freepik.com/free-psd/isolated-black-t-shirt-opened_125540-1283.jpg?w=900&t=st=1671943178~exp=1671943778~hmac=91861aa5a0a9fe277b2b754a573981bfcb0a509a47aea8bbb9ca484d06461fbc',
      ),
    ];

    final List<OrderInfo> infos = [
      OrderInfo(
          orderId: 1243,
          orderDate: DateFormat.yMd().add_jm().format(yesterday),
          paymentDate: DateFormat.yMd().add_jm().format(today)),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Orders',
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        controller: controller,
        children: [
          SingleOrder(
            infos: infos,
            items: items,
            controller: controller,
          ),
          const SizedBox(
            height: 10,
          ),
          SingleOrder(
            infos: infos,
            items: items,
            controller: controller,
          ),
        ],
      ),
    );
  }
}

class SingleOrder extends StatelessWidget {
  const SingleOrder({
    super.key,
    required this.infos,
    required this.items,
    required this.controller,
  });

  final List<OrderInfo> infos;
  final List<MyOrderItem> items;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      shrinkWrap: true,
      children: [
        const SizedBox(
          height: 5,
          width: double.infinity,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              //Order Details
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: infos.length,
                  itemBuilder: (context, index) {
                    return OrdersInfo(
                        orderId: infos[index].orderId,
                        orderDate: infos[index].orderDate,
                        paymentDate: infos[index].paymentDate);
                  }),
              //Divider
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Divider(
                  height: 2,
                  color: Colors.grey,
                ),
              ),

              //Items Column
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return OrderItemView(
                        title: items[index].title,
                        imgURL: items[index].imgUrl,
                        price: items[index].price);
                  }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('2 Items,'),
                    Text('Total :৳ 675'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Divider(
                  height: 2,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomButton(
                        function: () {},
                        text: 'Buy Again',
                        color: Colors.orange,
                        width: 100,
                        fontSize: 14,
                        height: 30),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
