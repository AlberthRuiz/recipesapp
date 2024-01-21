import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            print(index);
            return Container(
              height: 200,
              width: 500,
              color: Colors.yellow,
              margin: EdgeInsets.all(9),
            );
          },
        ));
    // ListView(
    //   children: [
    //     Container(
    //       height: 200,
    //       width: 500,
    //       color: Colors.yellow,
    //     ),
    //     Container(
    //       height: 200,
    //       width: 500,
    //       color: Colors.red,
    //     ),
    //     Container(
    //       height: 200,
    //       width: 500,
    //       color: Colors.green,
    //     ),
    //     Container(
    //       height: 200,
    //       width: 500,
    //       color: Colors.black,
    //     )
    //   ],
    // ),
  }
}
