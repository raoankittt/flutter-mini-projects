import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";
import "package:notes_flutter/style/app_style.dart";
import 'package:intl/intl.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  String formatTimestamp(Timestamp timestamp) {
    var format = DateFormat('dd-MM-yyyy'); // <- use skeleton here
    return format.format(timestamp.toDate());
  }

  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[doc["color"]],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["title"],
            style: AppStyle.mainTitle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(formatTimestamp(doc["timestamp"]),
                style: AppStyle.dateTitle),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            doc["content"],
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
  );
}
