import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/number.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});
  final Number color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.purple,
      child: Row(
        children: [
          Container(color: Color(0xffFFF8DC), child: Image.asset(color.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  color.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  color.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: ()  {
              // sound play
              final player = AudioPlayer();
              player.play(AssetSource(color.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white),)

        ],
      ),
    );
  }
}
