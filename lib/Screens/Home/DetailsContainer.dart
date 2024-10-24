import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String text;

  CategoryContainer({required this.imagePath, required this.heading , required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(10),
      shadowColor: Colors.black.withOpacity(0.5),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Color.fromRGBO(21, 18, 60, 1.0),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromRGBO(13, 142, 235, 1.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Adjust shadow color
              spreadRadius: 2, // Spread of shadow
              blurRadius: 8, // Blur effect of shadow
              offset: Offset(2, 4), // X and Y offset of the shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            imagePath,
            width: 120,
          ),
        ),
      ),
    );
  }
}
