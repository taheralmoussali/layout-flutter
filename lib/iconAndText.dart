import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final icon;
  final text;
  final Function buttonTapped;

  IconAndText({this.icon, this.text, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonTapped,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
