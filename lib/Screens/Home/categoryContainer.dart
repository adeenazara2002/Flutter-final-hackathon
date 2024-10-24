import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;

  CategoryContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8, // Raised or ubhra hua effect
      borderRadius: BorderRadius.circular(10),
      shadowColor: Colors.black.withOpacity(0.5), // Shadow color and opacity
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Color.fromRGBO(21, 18, 60, 1.0),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromRGBO(60, 37, 121, 1.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Adjust shadow color
              spreadRadius: 2,  // Spread of shadow
              blurRadius: 8,    // Blur effect of shadow
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
