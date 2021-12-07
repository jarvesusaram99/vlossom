import 'package:flutter/material.dart';

class SquareCards extends StatefulWidget {
  const SquareCards({Key? key}) : super(key: key);

  @override
  _SquareCardsState createState() => _SquareCardsState();
}

class _SquareCardsState extends State<SquareCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        Container(
          height: 115,
          width: 153,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1637764/pexels-photo-1637764.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            "Love me like",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
