import 'dart:async';
import 'dart:ffi';
import 'dart:ui';
import 'package:finalhackathonapplication/Screens/Home/DetailsContainer.dart';
import 'package:finalhackathonapplication/Screens/Home/categoryContainer.dart';
import 'package:finalhackathonapplication/Screens/Menu/menuScreen.dart';
import 'package:finalhackathonapplication/Screens/Order/bottomNavigation.dart';
import 'package:finalhackathonapplication/Screens/Order/orderDetails.dart';
import 'package:finalhackathonapplication/Screens/Order/orderWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationScreen extends StatelessWidget {
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
                          MaterialPageRoute(
                              builder: (context) => OrderDetailsScreen()),
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
                    'Find Location',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 55,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                          size: 25,
                        ),
                        hintText: 'Find your location',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Image.asset(
                      'assets/images/Map.png',
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 32, 83, 1.0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), // More rounded top corners
                      topRight: Radius.circular(10),
                      bottomLeft:
                          Radius.circular(10), // Less rounded bottom corners
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                  //   
                  Text(
                    'Your Location',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(100, 100, 100, 1),
                    ),
                  ),
                        ],
                      ),

                      Row(
                        children: [

                    IconButton(
                      icon: Icon(Icons.location_on, color: Colors.white),
                      onPressed: () {
                        
                      },
                    ),

                  
                  Text(
                    'Manchester , kentucky 37658',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                        ],
                      ),
                SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocationScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(42, 47, 117, 1.0),
                                Color.fromRGBO(30, 32, 83, 1.0),
                                Color.fromRGBO(55, 66, 157, 1.0),
                                Color.fromRGBO(90, 100, 206, 1.0)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80.0, vertical: 12.0),
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
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
        ],
      ),
    );
  }
}
