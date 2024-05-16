// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'PageTwoWhislist.dart';
import 'whislist.dart';

class PageOneWhislist extends StatefulWidget {
  @override
  _PageOneWhislist createState() => _PageOneWhislist();
}

class _PageOneWhislist extends State<PageOneWhislist> {
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
    cartItems.add(item.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: ListTile(
                title: Text(item.name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset('assets/img2.png', scale: 1)),
                    Text(item.description),
                    Text('Harga: Rp ${item.price}'),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(255, 150, 246, 133) ,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        'Sudah Dibayar',
                        style: TextStyle(
                          backgroundColor: Color.fromARGB(255, 150, 246, 133),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Item {
  String name;
  int price;
  String description;

  Item({
    required this.name,
    required this.price,
    required this.description,
  });
}
