import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Magic8Ball(),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int response = 1;

  void respond() {
    Random random = Random();
    setState(() {
      response = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: respond,
                child: Image.asset('images/ball$response.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
