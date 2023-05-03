import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_flutter/style/app_style.dart';

class NoteReaderScreen extends StatefulWidget {
  QueryDocumentSnapshot? doc;

  NoteReaderScreen({super.key, @required this.doc});
  @override
  State<NoteReaderScreen> createState() => _NoteReaderScreenState();
}

class _NoteReaderScreenState extends State<NoteReaderScreen> {
  @override
  Widget build(BuildContext context) {
    int colorId = widget.doc!["color"];
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[colorId],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyle.cardsColor[colorId],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc!["title"],
              style: AppStyle.mainTitle,
            ),
            Text(widget.doc!["timestamp"].toDate().toString(),
                style: AppStyle.dateTitle),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              widget.doc!["content"],
              style: AppStyle.mainContent,
            )
          ],
        ),
      ),
    );
  }
}
