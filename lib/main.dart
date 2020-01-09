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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Image.asset('images/1.jpg'),
        ),
        Expanded(
          flex: 2,
          child: Image.asset('images/2.png'),
        ),
        Expanded(
          child: Image.asset('images/3.png'),
        ),
      ],
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

  final ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        Text('170 Reviews',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20))
      ],
    ),
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
