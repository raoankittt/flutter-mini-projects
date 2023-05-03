import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_flutter/style/app_style.dart';

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({super.key});

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  int colorId = Random().nextInt(AppStyle.cardsColor.length);
  String date = DateTime.now().toString();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[colorId],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: AppStyle.cardsColor[colorId],
        title: const Text(
          "Add a new Note",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              hintText: "Note Title",
              border: InputBorder.none,
            ),
            style: AppStyle.mainTitle,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            date,
            style: AppStyle.dateTitle,
          ),
          const SizedBox(
            height: 28.0,
          ),
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _contentController,
            decoration: const InputDecoration(
              hintText: "Note Description",
              border: InputBorder.none,
            ),
            style: AppStyle.mainContent,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppStyle.accentColor,
        onPressed: () async {
          FirebaseFirestore.instance.collection("notes").add({
            "title": _titleController.text,
            "content": _contentController.text,
            "timestamp": FieldValue.serverTimestamp(),
            "color": colorId
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError(
              (error) => print("Failed to add note due to error: " + error));
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
