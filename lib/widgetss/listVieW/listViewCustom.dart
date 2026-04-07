import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(color:Colors.orange[200],
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Name $index"),
                subtitle: Text("987654321"),
                trailing: Icon(Icons.phone),
              ),
            );
          },
          // childrenDelegate: SliverChildListDelegate(
          //   List.generate(
          //       20,
          //           (index) => Card(
          //             child: ListTile(
          //               leading: Icon(Icons.person),
          //               title: Text("Name $index"),
          //               subtitle: Text("987654321"),
          //               trailing: Icon(Icons.phone),
          //       ),
          //     )
          //   ),
          // ),
        ),
      ),
    );
  }
}
