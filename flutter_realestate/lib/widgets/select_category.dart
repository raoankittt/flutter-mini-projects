import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_rounded, "Houses"),
          categoryButton(Icons.villa_rounded, "Villages"),
          categoryButton(Icons.apartment_rounded, "Apartments"),
          categoryButton(Icons.castle_rounded, "Castles"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    height: 80.0,
    width: 80.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade100),
    ),
    child: InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: Colors.blueAccent,
          ),
          Text("$text"),
        ],
      ),
    ),
  );
}
