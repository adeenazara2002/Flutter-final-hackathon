import 'package:flutter/material.dart';

class OrderItemContainer extends StatefulWidget {
  final String imagePath;
  final String price;
  final String description;
  final String label;
  final ValueChanged<int> onCountChanged;

  OrderItemContainer({
    required this.imagePath,
    required this.price,
    required this.description,
    required this.label,
    required this.onCountChanged,
  });

  @override
  _OrderItemContainerState createState() => _OrderItemContainerState();
}

class _OrderItemContainerState extends State<OrderItemContainer> {
  int itemCount = 1;

  void _incrementCount() {
    setState(() {
      itemCount++;
      widget.onCountChanged(itemCount);
    });
  }

  void _decrementCount() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
        widget.onCountChanged(itemCount);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.transparent, 
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              widget.imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(100, 100, 100, 1),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            color: Colors.white,
                            onPressed: _decrementCount,
                          ),
                          Text(
                            itemCount.toString(),
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            onPressed: _incrementCount,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.delete,
                          color: Color.fromRGBO(255, 255, 255, 0.6)),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
