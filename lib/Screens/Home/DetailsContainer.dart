import 'package:finalhackathonapplication/Screens/Restaurant/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String text;
  final String secondText;

  DetailsContainer(
      {required this.imagePath,
      required this.heading,
      required this.text,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(10),
      shadowColor: Colors.black.withOpacity(0.5),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromRGBO(21, 18, 60, 1.0),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromRGBO(13, 142, 235, 1.0),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -60,
              right: -70,
              child: Container(
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    imagePath,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.7),
                    ),
                  ),
                  Text(
                    secondText,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantScreen()),
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
                          horizontal: 30.0, vertical: 15.0),
                      child: Text(
                        'Order Now',
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
          ],
        ),
      ),
    );
  }
}
