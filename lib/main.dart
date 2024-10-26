import 'package:finalhackathonapplication/Screens/Home/homeScreen.dart';
import 'package:finalhackathonapplication/Screens/Location/location.dart';
import 'package:finalhackathonapplication/Screens/Menu/menuScreen.dart';
import 'package:finalhackathonapplication/Screens/Order/orderDetails.dart';
import 'package:finalhackathonapplication/Screens/Restaurant/restaurant.dart';
import 'package:finalhackathonapplication/Screens/Track/trackOrder.dart';
import 'package:finalhackathonapplication/Screens/login.dart';
import 'package:finalhackathonapplication/Screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => SignIn(),
        '/home': (context) => HomeScreen(),
      },
      );
  }
}
