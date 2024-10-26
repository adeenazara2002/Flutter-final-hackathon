import 'package:finalhackathonapplication/Screens/Home/homeScreen.dart';
import 'package:finalhackathonapplication/Screens/Menu/menuScreen.dart';
import 'package:finalhackathonapplication/Screens/Order/orderDetails.dart';
import 'package:finalhackathonapplication/Screens/Restaurant/restaurant.dart';
import 'package:finalhackathonapplication/Screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderDetailsScreen(),
    );
  }
}
