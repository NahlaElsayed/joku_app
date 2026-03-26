import 'package:flutter/material.dart';
import 'package:toku_app/Components/phrase_item.dart';
import 'package:toku_app/Models/phrase.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  final List<Phrase> phrase = const [
    Phrase(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: "ichi",
      enName: "are you coming",
    ),
    Phrase(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: "ni",
      enName: "dont forget to subscribe",
    ),
    Phrase(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: "san",
      enName: "how are you feeling",
    ),

    Phrase(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: "shi",
      enName: "i love anime",
    ),
    Phrase(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: "go",
      enName: "i love programming",
    ),
    Phrase(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: "roku",
      enName: "programming is easy",
    ),
    Phrase(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: "sebun",
      enName: "what is your name",
    ),
    Phrase(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: "kyu",
      enName: "where are you going",
    ),
    Phrase(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: "kyu",
      enName: "yes im coming",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrase", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context , index){
          return PhraseItem(phrase: phrase[index]);
        }


      ),
    );
  }
}


