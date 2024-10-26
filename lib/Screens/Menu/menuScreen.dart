import 'package:finalhackathonapplication/Screens/Restaurant/productItem.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  int _selectedIndex = 0; // To track the selected item

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        child: Stack(
          children: [
            // Deal image
            Image.asset(
              'assets/images/deal.png',
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 50,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Container with glass effect
            Positioned(
              top: 260,
              left: 20,
              right: 20,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    // Top part with glass effect
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            color: Color.fromRGBO(20, 20, 71, 1.0)
                                .withOpacity(0.2),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Text(
                                      'Udon Miso',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Text(
                                      '16.00',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Bottom part with dark blue color and text
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(11, 18, 37, 1),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Our Udon Miso is a comforting bowl',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'thick handmade Udon noodles rich in',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'misco broth garnished with tofu,',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'onions and vegetables.',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 220,
              left: 20,
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(36, 28, 100, 1.0),

                      width: 1, 
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      backgroundColor: Color.fromRGBO(11, 18, 37, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.minimize,
                              color: Color.fromRGBO(255, 255, 255, 0.6)),
                          onPressed: () {},
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        IconButton(
                          icon: Icon(Icons.add,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10, left: 20),
                width: 120,
                height: 5,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
