import 'package:flutter/material.dart';

class HomeB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.red,
            child: Column(
              children: [
                Icon(Icons.phone_android, size: 60, color: Colors.white),
                SizedBox(height: 5),
                Text(
                  index.toString(),
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
