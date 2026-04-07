import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class Nestedcontainer extends StatelessWidget {
  const Nestedcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        padding: EdgeInsets.all(20),
        child: ClipPath(
          clipper: TicketPassClipper(
            holeRadius: 80,
            position: 900
          ),
          child: Container(
            height: 160,
            padding: EdgeInsets.all(20),
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              'Multiple Points Clipper Bottom Only',
              style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
    );
  }
}
