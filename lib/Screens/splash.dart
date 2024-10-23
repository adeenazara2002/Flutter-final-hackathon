import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/backgroundImage.png'), 
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
