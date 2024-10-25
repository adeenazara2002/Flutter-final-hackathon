import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Use Stack to place icons over the deal image
            Stack(
              children: [
                // Deal image
                Image.asset(
                  'assets/images/deal.png',
                  width: MediaQuery.of(context).size.width,
                ),
                // Icons positioned over the deal image
                Positioned(
                  top: 50, // Adjust the top position to your preference
                  left: 10, // Adjust the left position to your preference
                  right: 10, // Adjust the right position to your preference
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.white),
                        onPressed: () {
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Other rows or widgets below the image
            Row(
              children: [
                // You can add other content here as needed
              ],
            )
          ],
        ),
      ),
    );
  }
}
