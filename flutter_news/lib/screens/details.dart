import 'package:flutter/material.dart';
import 'package:flutter_news/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  NewsData? data;
  DetailsScreen({super.key, this.data});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.red.shade900),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data!.title!,
              style: const TextStyle(fontSize: 26.0),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              widget.data!.author!,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Hero(
              tag: widget.data!.title!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(widget.data!.urlToImage!),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(widget.data!.content!,
                style: const TextStyle(color: Colors.black54, fontSize: 15.0))
          ],
        ),
      ),
    );
  }
}
