import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 500,
              color: Colors.yellow,
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 500,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
