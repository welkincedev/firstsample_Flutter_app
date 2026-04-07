import 'package:flutter/material.dart';

class Textex extends StatelessWidget {
  const Textex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red,Colors.blue],
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.green,
                blurRadius: 20,
                offset: Offset(2, 2),
              ),
              BoxShadow(
                color: Colors.blue,
                blurRadius: 40,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Text(
            "Hi Guys",
            // "Luminar is a software teaching center in Kerala, its Headquaters situated at Kakkanad",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // RichText(
        //   text: TextSpan(
        //     text: "Hello",
        //     style: TextStyle(
        //       color: Colors.red,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 40,
        //     ),
        //     children: [
        //       TextSpan(
        //         text: " Welcome",
        //         style: TextStyle(
        //           // color: Colors.blue,
        //           fontStyle: FontStyle.italic,
        //           fontSize: 40,
        //           decorationColor: Colors.green
        //         ),
        //       ),
        //       TextSpan(
        //         text: " to Flutter",
        //         style: TextStyle(
        //           color: Colors.purple,
        //           fontSize: 40,
        //           decoration: TextDecoration.underline
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SelectableText(
        //   "Users uses to select text and all",
        //   style: TextStyle(fontSize: 20),
        //   toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
        // ),
      ),
    );
  }
}
