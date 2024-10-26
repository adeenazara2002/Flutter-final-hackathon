import 'dart:async';
import 'dart:ffi';
import 'dart:ui';
import 'package:finalhackathonapplication/Screens/Home/DetailsContainer.dart';
import 'package:finalhackathonapplication/Screens/Home/categoryContainer.dart';
import 'package:finalhackathonapplication/Screens/Menu/menuScreen.dart';
import 'package:finalhackathonapplication/Screens/Order/bottomNavigation.dart';
import 'package:finalhackathonapplication/Screens/Order/orderWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                SizedBox(height: 60),
                Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuScreen()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Order Details',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ]),
                SizedBox(height: 20),
                OrderItemContainer(
                  imagePath: 'assets/images/salad.jpg',
                  price: '\$12.99',
                  description: 'Delicious Burger',
                  label: 'Cheese Sauce',
                  onCountChanged: (count) {
                    print("Item count: $count");
                  },
                ),
                OrderItemContainer(
                  imagePath: 'assets/images/curry.jpg',
                  price: '\$12.99',
                  description: 'Delicious Burger',
                  label: 'Cheese Sauce',
                  onCountChanged: (count) {
                    print("Item count: $count");
                  },
                ),
                SizedBox(
                  height: 36,
                ),
                BottomSummaryContainer(
                  subtotal: "\$25.00",
                  deliveryFee: "\$5.00",
                  total: "\$30.00",
                  onCheckout: () {
                    // Handle checkout action
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
