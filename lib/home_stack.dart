import 'package:flutter/material.dart';

class HomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(height: 150, width: 150, color: Colors.blue),
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 50, width: 50, color: Colors.orange),
              Positioned(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
                child: Container(height: 150, width: 50, color: Colors.white),
              ),
              Positioned(
                top: 50,
                bottom: 50,
                left: 50,
                right: 50,
                child: Image.network("https://img.icons8.com/?size=100&id=pCvIfmctRaY8&format=png&color=000000",
                width: 200,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  "https://m.media-amazon.com/images/I/81OLTBHHlrL._AC_SX679_.jpg",
                ),
              ),
              Positioned(
                bottom: 20,
                right: 18,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                height: 5,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              AnimatedContainer(
                duration: Duration(seconds: 10),
                height: 5,
                width: 200,
                color: Colors.blueAccent,
              ),
            ],
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Image.network("https://abbl.com/wp-content/uploads/2015/05/baitul-mukarram.jpg"),
              Positioned(
                top: 0,
                right: 0,
                child: Text("Dhaka,Bangladesh",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              )))
            ],
          ),
        ],
      ),
    );
  }
}
