import 'package:flutter/material.dart';
import 'PageOneWhislist.dart';

class PageTwoWhislist extends StatefulWidget {
  final List<String> cartItems;
  final List<Item> items;

  PageTwoWhislist({required this.cartItems, required this.items});

  @override
  _PageTwoWhislistState createState() => _PageTwoWhislistState();
}

class _PageTwoWhislistState extends State<PageTwoWhislist> {
  void removeFromCart(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  int getTotalPrice() {
    int totalPrice = 0;
    for (String itemName in widget.cartItems) {
      Item item = widget.items.firstWhere((item) => item.name == itemName);
      totalPrice += item.price;
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final itemName = widget.cartItems[index];
                Item item = widget.items.firstWhere((item) => item.name == itemName);
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text('Harga: Rp ${item.price}'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => removeFromCart(index),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Pembelian:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rp ${getTotalPrice()}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
