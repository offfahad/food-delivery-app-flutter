import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
          title: const Text('Food Delivery'),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Text(
                  'Cart (${currentUser.cart!.length})',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ))
          ]),
    );
  }
}
