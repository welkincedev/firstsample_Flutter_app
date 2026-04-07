import 'package:flutter/material.dart';

class ListViewOne extends StatelessWidget {
  const ListViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ListView - 01")),
        body: ListView(
          padding: EdgeInsets.only(bottom:10,top: 10),
          scrollDirection: Axis.vertical,

    children: List.generate(10, (index)=>Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg")),
    // children: [
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // Image.network("https://as2.ftcdn.net/jpg/01/23/73/15/1000_F_123731572_KMfBEkpbRlfQj1ypdPVwv4W0r27B9hVJ.jpg"),
    // ],
    ),
    );
    }
}
