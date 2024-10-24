import 'dart:async';
import 'package:finalhackathonapplication/Screens/Home/DetailsContainer.dart';
import 'package:finalhackathonapplication/Screens/Home/categoryContainer.dart';
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
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Icon(
                      Icons.menu,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 130)),
                    Image.asset('assets/images/segmentedControl.png'),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 70)),
                Text(
                  'Maplewood Suites',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 10),
              child: Container(
                height: 68,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color.fromRGBO(76, 116, 140, 1.0),
                  ),
                ),
                child: TextField(
                  // controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 30,
                    ),
                    hintText: 'Your Order?',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                  ),
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 180)),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      CategoryContainer(imagePath: 'assets/images/burger.png'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'Burgers',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CategoryContainer(imagePath: 'assets/images/cake.png'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'Dessert',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CategoryContainer(imagePath: 'assets/images/sushi.png'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'Sushi',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CategoryContainer(imagePath: 'assets/images/taco.png'),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text(
                        'Tacos',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DetailsContainer(
                    imagePath: 'assets/images/soap.png',
                    heading: '30% OFF',
                    text: 'Discover Discounts in your',
                    secondText: 'favorite local restaurants',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
