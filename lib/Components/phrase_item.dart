import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/phrase.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.phrase});
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.blue,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              // sound play
              final player = AudioPlayer();
              player.play(AssetSource(phrase.sound));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
