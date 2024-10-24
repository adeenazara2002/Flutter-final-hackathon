import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;

  CategoryContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Color.fromRGBO(21, 18, 60, 1.0),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(60, 37, 121, 1.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Image.asset(
          imagePath,
          width: 120,
        ),
      ),
    );
  }
}
