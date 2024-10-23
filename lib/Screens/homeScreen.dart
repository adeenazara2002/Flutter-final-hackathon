import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
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
            SizedBox(height: 50,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Icon(
                      Icons.menu,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 30,
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
