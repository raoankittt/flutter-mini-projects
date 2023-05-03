import 'package:flutter/material.dart';
import "package:appbar_animated/appbar_animated.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String imageUrl =
      "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScaffoldLayoutBuilder(
      backgroundColorAppBar:
          const ColorBuilder(Colors.transparent, Colors.blue),
      textColorAppBar: const ColorBuilder(Colors.white),
      appBarBuilder: _appBar,
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .36),
            height: 900,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
                color: Colors.white),
          )
        ],
      ),
    ));
  }

  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      elevation: 0,
      title: Text(
        "AppBar Animate",
        style: TextStyle(
          color: colorAnimated.color,
        ),
      ),
      leading: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: colorAnimated.color,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: colorAnimated.color,
          ),
        ),
      ],
    );
  }
}
