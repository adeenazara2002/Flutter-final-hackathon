import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Other content of the screen (e.g., menu, search bar, categories)
          Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Icon(Icons.menu, color: Colors.white, size: 30),
                  Padding(padding: EdgeInsets.only(left: 15)),
                  Text('Delivery', style: TextStyle(color: Colors.white60, fontSize: 15)),
                  Spacer(),
                  Image.asset('assets/images/segmentedControl.png'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 70)),
                  Text('Maplewood Suites', style: TextStyle(color: Colors.white, fontSize: 17)),
                ],
              ),
              SizedBox(height: 15),
              // Search bar and category containers here...
              // Add more UI elements like categories, deals, etc.
            ],
          ),

          // Glass effect bottom navigation bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,  // Adjust based on your needs
              margin: EdgeInsets.all(20),  // Margin to keep it off the screen edge
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25),  // Rounded borders
                border: Border.all(color: Colors.white.withOpacity(0.4), width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),  // Apply to ClipRRect as well
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Navigation items with icons and text
                      _buildNavItem(Icons.home, "Home"),
                      _buildNavItem(Icons.search, "Browse"),
                      _buildNavItem(Icons.shopping_cart, "Cart"),
                      _buildNavItem(Icons.receipt, "Order"),
                      _buildNavItem(Icons.person, "Account"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each navigation item
  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 30),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
