import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        stok: 10,
        rating: '11/100',
        image: 'assets/image/sugar.webp'),
    Item(
        name: 'Salt',
        price: 2000,
        stok: 1,
        rating: 'asin/10',
        image: 'assets/image/salt.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Armand Maulana Store'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
              child: GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/item',
                        arguments:
                            item, // Mengirim data item ke halaman ItemPage
                      );
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: item
                                  .name, // Unik identifier untuk Hero transition
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              item.name,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Rp${item.price}',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 14),
                            ),
                            Text(
                              'Stock: ${item.stok}',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
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
  }
}
