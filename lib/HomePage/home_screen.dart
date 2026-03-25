import 'package:flutter/material.dart';
import 'package:toku_app/Components/category_items.dart';
import 'package:toku_app/HomePage/number_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5DC),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Toku", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumberPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: "FamilyMembers",
            color: Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumberPage();
                  },
                ),
              );
            },
          ),
          Category(text: "Colors", color: Colors.purple, onTap: () {}),
          Category(text: "Phrases", color: Colors.blue, onTap: () {}),
        ],
      ),
    );
  }
}
