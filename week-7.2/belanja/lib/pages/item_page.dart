import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    if (arguments is Item) {
      final Item item = arguments;

      return Scaffold(
        appBar: AppBar(
          title: Text(item.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: item.name,
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Item Name: ${item.name}',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Price: Rp${item.price}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Stock: ${item.stok}',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Rating: ${item.rating}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            // Footer
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Armand Maulana Andika Putra/2241720090',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('No item data available.'),
        ),
      );
    }
  }
}
