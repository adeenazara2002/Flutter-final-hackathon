import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 140,
      left: 30,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                color: _isChecked
                    ? Color.fromRGBO(36, 28, 100, 1.0)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _isChecked
                      ? Color.fromRGBO(36, 28, 100, 1.0)
                      : Color.fromRGBO(36, 28, 100, 1.0),
                  width: 2,
                ),
              ),
              child: _isChecked
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 20,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
