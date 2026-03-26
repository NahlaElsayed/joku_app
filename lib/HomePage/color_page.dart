import 'package:flutter/material.dart';
import 'package:toku_app/Components/color_item.dart';
import 'package:toku_app/Models/number.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<Number> color = const [
    Number(
      sound: 'sounds/colors/black.wav',
      image: "assets/images/colors/color_black.png",
      jpName: "ichi",
      enName: "black",
    ),
    Number(
      sound: 'sounds/colors/brown.wav',
      image: "assets/images/colors/color_brown.png",
      jpName: "ni",
      enName: "brown",
    ),
    Number(
      sound: 'sounds/colors/dusty yellow.wav',
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "san",
      enName: "dusty yellow",
    ),

    Number(
      sound: 'sounds/colors/gray.wav',
      image: "assets/images/colors/color_gray.png",
      jpName: "shi",
      enName: "gray",
    ),
    Number(
      sound: 'sounds/colors/green.wav',
      image: "assets/images/colors/color_green.png",
      jpName: "go",
      enName: "green",
    ),
    Number(
      sound: 'sounds/colors/red.wav',
      image: "assets/images/colors/color_red.png",
      jpName: "roku",
      enName: "red",
    ),
    Number(
      sound: 'sounds/colors/white.wav',
      image: "assets/images/colors/color_white.png",
      jpName: "sebun",
      enName: "white",
    ),
    Number(
      sound: 'sounds/colors/yellow.wav',
      image: "assets/images/colors/yellow.png",
      jpName: "kyu",
      enName: "yellow",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context , index){
          return ColorItem(color: color[index]);
        }


      ),
    );
  }
}


