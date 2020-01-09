import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        // Change to buildColumn() for the other column example
        body: Center(child: buildRow()),
      ),
    );
  }

  Widget buildRow() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
      height: 600,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 500,
              child: leftColumn
            )
          ],
        )
      )
    );
  }

  static var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
    ],
  );

  static final ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20
          )
        )
      ],
    ),
  );

  static final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2
  );

  static final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP'),
              Text('25 min')
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              Text('COOK'),
              Text('1 hr')
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEEDS'),
              Text('4-6')
            ],
          ),
        ],
      )
    )
  );

  static final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Column(
      children: [
        ratings,
        iconList
      ]
    )
  );

  Widget buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
        Image.asset('images/2.png', fit: BoxFit.cover, width: 100, height: 100),
        Image.asset('images/3.png', fit: BoxFit.cover, width: 100, height: 100),
      ],
    );
  }
}
