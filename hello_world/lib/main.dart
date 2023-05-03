import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      title: "Flutter",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Learning Flutter",
              style: TextStyle(color: Colors.black87),
            ),
            backgroundColor: Colors.orangeAccent,
          ),
          backgroundColor: Colors.indigo,
          body: Image(
            image: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80"),
          ))));
}
