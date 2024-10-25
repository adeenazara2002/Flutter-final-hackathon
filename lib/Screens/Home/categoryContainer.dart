import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;

  CategoryContainer({required this.imagePath,});

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
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(2, 4),
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
