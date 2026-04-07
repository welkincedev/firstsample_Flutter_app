import 'package:flutter/material.dart';

class ListViewThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(child: Center(child: Text("Card No $index")), color: Colors.yellow[300]);
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 3, color: Colors.brown[100]);
        },
        itemCount: 10,
      ),
    );
  }
}
