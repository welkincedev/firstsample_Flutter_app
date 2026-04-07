import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.baseline,
      //   textBaseline: TextBaseline.alphabetic,
      //   children: [
      //     Text("Normal", style: TextStyle(fontSize: 20)),
      //     Text("Large", style: TextStyle(fontSize: 40)),
      //     Text("Small", style: TextStyle(fontSize: 90)),
      //   ],
      // ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Flexible(flex:1,child: Container(height: 250,color: Colors.red,)),
         // SizedBox(height: 20,),
          Text("Hello"),
          Row(
            children: [
              Container(height: 50,width: 50,color: Colors.yellow),
              //SizedBox(height: 20,),
              Container(height: 50,width: 50,color: Colors.blue),
            ],
          ),
          Text("Done"),
        ],
      ),
    );
  }
}
