import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/rating_stars.dart';

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
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant!.imageUrl ?? '',
                child: Image(
                  height: 220.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant!.imageUrl ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant!.name ?? '',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      '0.2 miles away',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                RatingStars(rating: widget.restaurant!.rating),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  widget.restaurant!.address ?? '',
                  style: const TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        horizontal: 30.0), // Adjust the padding as needed
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context)
                        .primaryColor, // Change the color as needed
                  ),
                ),
                child: const Text(
                  'Reviews',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        horizontal: 30.0), // Adjust the padding as needed
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context)
                        .primaryColor, // Change the color as needed
                  ),
                ),
                child: const Text(
                  'Contact',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
