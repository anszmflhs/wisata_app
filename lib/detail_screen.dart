import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/disneyland.jpg',width: 300,height: 300),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
