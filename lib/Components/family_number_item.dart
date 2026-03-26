import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/number.dart';

class FamilyNumberItem extends StatelessWidget {
  const FamilyNumberItem({super.key, required this.familyNumber});
  final Number familyNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.green,
      child: Row(
        children: [
          Container(color: Color(0xffFFF8DC), child: Image.asset(familyNumber.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  familyNumber.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  familyNumber.enName,
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
              player.play(AssetSource(familyNumber.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white),)

        ],
      ),
    );
  }
}
