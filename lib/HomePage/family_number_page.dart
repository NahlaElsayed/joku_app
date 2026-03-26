import 'package:flutter/material.dart';
import 'package:toku_app/Components/family_number_item.dart';
import 'package:toku_app/Models/number.dart';

class FamilyNumberPage extends StatelessWidget {
  const FamilyNumberPage({super.key});

  final List<Number> familyNumber = const [
    Number(
      sound: 'sounds/family_members/grand father.wav',
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "ichi",
      enName: "grand father",
    ),
    Number(
      sound: 'sounds/family_members/grand mother.wav',
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "ni",
      enName: "grand mother",
    ),
    Number(
      sound: 'sounds/family_members/father.wav',
      image: "assets/images/family_members/family_father.png",
      jpName: "san",
      enName: "father",
    ),

    Number(
      sound: 'sounds/family_members/mother.wav',
      image: "assets/images/family_members/family_mother.png",
      jpName: "shi",
      enName: "mother",
    ),
    Number(
      sound: 'sounds/family_members/daughter.wav',
      image: "assets/images/family_members/family_daughter.png",
      jpName: "go",
      enName: "daughter",
    ),
    Number(
      sound: 'sounds/family_members/son.wav',
      image: "assets/images/family_members/family_son.png",
      jpName: "roku",
      enName: "son",
    ),
    Number(
      sound: 'sounds/family_members/older bother.wav',
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "sebun",
      enName: "older brother",
    ),
    Number(
      sound: 'sounds/family_members/older sister.wav',
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "hanchi",
      enName: "older sister",
    ),
    Number(
      sound: 'sounds/family_members/younger brohter.wav',
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "kyu",
      enName: "younger brother",
    ),
    Number(
      sound: 'sounds/family_members/younger sister.wav',
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "ju",
      enName: "younger sister",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Numbers", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: familyNumber.length,
        itemBuilder: (context , index){
          return FamilyNumberItem(familyNumber: familyNumber[index]);
        }


      ),
    );
  }
}


