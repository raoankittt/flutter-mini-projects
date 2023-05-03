import 'package:flutter/material.dart';
import 'package:flutter_news/screens/details.dart';

import '../models/news_model.dart';

class NewsListTile extends StatefulWidget {
  NewsData? data;
  NewsListTile({super.key, this.data});

  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              data: widget.data!,
            ),
          ),
        );
      },
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 12.0),
          padding: const EdgeInsets.all(12.0),
          height: 130.0,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(26.0),
          ),
          child: Row(children: [
            Flexible(
              flex: 3,
              child: Hero(
                tag: widget.data!.title!,
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: NetworkImage(widget.data!.urlToImage!),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Flexible(
              flex: 5,
              child: Column(
                children: [
                  Text(
                    widget.data!.title!,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.data!.content!,
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis, color: Colors.white54),
                  )
                ],
              ),
            ),
          ])),
    );
  }
}
