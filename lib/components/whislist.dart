import 'package:flutter/material.dart';
import 'PageOneWhislist.dart';
// import 'PageTwoWhislist.dart';

class Item {
  final String name;
  final int price;
  final String description;

  Item({required this.name, required this.price, required this.description});
}

class WhislistPage extends StatefulWidget {
  const WhislistPage({Key? key}) : super(key: key);

  @override
  State<WhislistPage> createState() => _WhislistPageState();
}

class _WhislistPageState extends State<WhislistPage> {
  List<Item> items = [
    Item(
      name: 'Business Foundation',
      price: 250000,
      description: '7 Hours class',
    ),
    Item(
      name: 'Principles of Management',
      price: 350000,
      description: '10 Hours Class',
    ),
    Item(
      name: 'Introduction to Business',
      price: 150000,
      description: '14 Hours Class',
    ),
  ];
  List<String> cartItems = [];

  void addToCart(Item item) {
    setState(() {
      cartItems.add(item.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Payment History'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Ordered'),
              Tab(text: 'Cancelled')
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PageOneWhislist(),
            Center(child: Text('No found Order'),)
            // PageTwoWhislist(cartItems: cartItems, items:[]),
          ],
        ),
      ),
    );
  }
}
