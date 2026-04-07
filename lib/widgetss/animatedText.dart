import 'package:flutter/material.dart';


class AnimatedtextWidget extends StatefulWidget {
  const AnimatedtextWidget({super.key});

  @override
  State<AnimatedtextWidget> createState() => _AnimatedtextWidgetState();
}

class _AnimatedtextWidgetState extends State<AnimatedtextWidget> {

  String displayText = "Helo World";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          // color: Colors.green,
          padding: EdgeInsets.only(left:30,right: 40),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red,Colors.blue],
            ),
            shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30)
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                displayText,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = "New Text";
                  });
                },
                child: Text("Update Text"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
