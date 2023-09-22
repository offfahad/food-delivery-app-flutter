import 'package:flutter/material.dart';

class NearbyRestaurant extends StatelessWidget {
  const NearbyRestaurant({super.key});

  _buildRestaurants(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Nearby Restaurnat',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
        ),
        _buildRestaurants(),
      ],
    );
  }
}
