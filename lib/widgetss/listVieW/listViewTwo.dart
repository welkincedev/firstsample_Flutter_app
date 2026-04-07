import 'package:flutter/material.dart';

class ListViewTwo extends StatelessWidget {
  const ListViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 5,itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
        );
      }),
    );
  }
}
