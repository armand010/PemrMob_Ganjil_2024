import 'dart:async';

import 'package:flutter/material.dart';
import 'pizza.dart';
import 'httphelper.dart';

class PizzaDetaiScreen extends StatefulWidget {
  const PizzaDetaiScreen({super.key});

  @override
  State<PizzaDetaiScreen> createState() => _PizzaDetaiScreenState();
}

class _PizzaDetaiScreenState extends State<PizzaDetaiScreen> {
  final TextEditingController txtId = TextEditingController();
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtDescription = TextEditingController();
  final TextEditingController txtPrice = TextEditingController();
  final TextEditingController txtImageUrl = TextEditingController();
  String operationResult = '';

  Future postPizza() async {
    HttpHelper helper = HttpHelper();
    Pizza pizza = Pizza();
    pizza.id = int.tryParse(txtId.text) ?? 0;
    pizza.pizzaName = txtName.text;
    pizza.description = txtDescription.text;
    pizza.price = double.tryParse(txtPrice.text)?? 0.0;
    pizza.imageUrl = txtImageUrl.text;
    String result = await helper.postPizza(pizza);

    setState(() {
      operationResult = result;
    });
  }

  @override
  void dispose() {
    txtId.dispose();
    txtName.dispose();
    txtDescription.dispose();
    txtPrice.dispose();
    txtImageUrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pizza Detail'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  operationResult,
                  style: TextStyle(
                      backgroundColor: Colors.green[200], color: Colors.black),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  controller: txtId,
                  decoration:
                      const InputDecoration(hintText: 'Insert Pizza Name'),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  controller: txtDescription,
                  decoration:
                      const InputDecoration(hintText: 'Insert Description'),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  controller: txtPrice,
                  decoration: const InputDecoration(hintText: 'Insert Price'),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                    controller: txtImageUrl,
                    decoration:
                        const InputDecoration(hintText: 'Insert Image Url')),
                const SizedBox(
                  height: 48,
                ),
                ElevatedButton(
                  child: const Text('Send Post'),
                  onPressed: () {
                    postPizza();
                  },
                )
              ],
            ),
          ),
        ));
  }
}
