import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'iconAndText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('asset/images/lake.jpg'),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 35, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oeschinen Leke Campground',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(
                      liked ? Icons.star : Icons.star_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        if (liked)
                          liked = false;
                        else
                          liked = true;
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconAndText(
                  buttonTapped: () {
                    Fluttertoast.showToast(
                        msg: "This is call button",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  icon: Icons.call,
                  text: 'CALL',
                ),
                IconAndText(
                  buttonTapped: () {
                    Fluttertoast.showToast(
                        msg: "This is route button",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  icon: Icons.send,
                  text: 'ROUTE',
                ),
                IconAndText(
                  buttonTapped: () {
                    Fluttertoast.showToast(
                        msg: "This is share button",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black54,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  icon: Icons.share,
                  text: 'SHARE',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situaled 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run',
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
