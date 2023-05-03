import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 18.0),
          border: InputBorder.none,
          filled: true,
          hintText: "Search...",
          fillColor: Color(0xFFF8FAFC),
          prefixIcon: Icon(CupertinoIcons.search),
          suffixIcon: Icon(Icons.filter_alt)),
    );
  }
}
