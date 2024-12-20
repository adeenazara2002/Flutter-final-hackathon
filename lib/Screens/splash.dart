import 'dart:async';
import 'package:finalhackathonapplication/Screens/Home/homeScreen.dart';
import 'package:finalhackathonapplication/Screens/login.dart';
import 'package:finalhackathonapplication/Screens/signUp.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    });
  }

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
            SizedBox(
              height: 330,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 130)),
                Image.asset('assets/images/logo.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
