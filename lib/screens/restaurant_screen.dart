import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({this.restaurant, super.key});

  final Restaurant? restaurant;

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Image(
              height: 220.0,
              width: MediaQuery.of(context).size.width,
              image: AssetImage(widget.restaurant!.imageUrl ?? ''),
              fit: BoxFit.cover,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 30.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                    color: Theme.of(context).primaryColor,
                    iconSize: 35.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
