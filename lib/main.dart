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
        body: Center(child: buildColumn()),
      ),
    );
  }

  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
      ],
    );
  }

  Widget buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
        Image.asset('images/1.jpg', fit: BoxFit.cover, width: 100, height: 100),
      ],
    );
  }
}
