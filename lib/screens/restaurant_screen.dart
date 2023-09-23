import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({this.restaurant,super.key});

  final Restaurant? restaurant;

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Screen'),),
    );
  }
}