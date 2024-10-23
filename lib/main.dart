import 'package:finalhackathonapplication/Screens/splash.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const JobListing());
}

class JobListing extends StatelessWidget {
  const JobListing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
