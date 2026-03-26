import 'package:flutter/material.dart';
import 'package:toku_app/Components/number_item.dart';
import 'package:toku_app/Models/number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  // final one = const Number(
  //   image: "assets/images/numbers/number_one.png",
  //   jpName: "ichi",
  //   enName: "one",
  // );
  //
  // final two = const Number(
  //   image: "assets/images/numbers/number_two.png",
  //   jpName: "ni",
  //   enName: "two",
  // );
  // final three = const Number(
  //   image: "assets/images/numbers/number_three.png",
  //   jpName: "san",
  //   enName: "three",
  // );
  //
  // final four = const Number(
  //   image: "assets/images/numbers/number_four.png",
  //   jpName: "shi",
  //   enName: "four",
  // );
  // final five = const Number(
  //   image: "assets/images/numbers/number_five.png",
  //   jpName: "go",
  //   enName: "five",
  // );
  // final six = const Number(
  //   image: "assets/images/numbers/number_six.png",
  //   jpName: "roku",
  //   enName: "six",
  // );
  // final seven = const Number(
  //   image: "assets/images/numbers/number_seven.png",
  //   jpName: "sebun",
  //   enName: "seven",
  // );
  // final eight = const Number(
  //   image: "assets/images/numbers/number_eight.png",
  //   jpName: "hanchi",
  //   enName: "eight",
  // );
  // final nine = const Number(
  //   image: "assets/images/numbers/number_nine.png",
  //   jpName: "kyu",
  //   enName: "nine",
  // );
  // final ten = const Number(
  //   image: "assets/images/numbers/number_ten.png",
  //   jpName: "ju",
  //   enName: "ten",
  // );
  final List<Number> number = const [
    Number(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: "assets/images/numbers/number_one.png",
      jpName: "ichi",
      enName: "one",
    ),
    Number(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: "assets/images/numbers/number_two.png",
      jpName: "ni",
      enName: "two",
    ),
    Number(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: "assets/images/numbers/number_three.png",
      jpName: "san",
      enName: "three",
    ),

    Number(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: "assets/images/numbers/number_four.png",
      jpName: "shi",
      enName: "four",
    ),
    Number(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: "assets/images/numbers/number_five.png",
      jpName: "go",
      enName: "five",
    ),
    Number(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: "assets/images/numbers/number_six.png",
      jpName: "roku",
      enName: "six",
    ),
    Number(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: "assets/images/numbers/number_seven.png",
      jpName: "sebun",
      enName: "seven",
    ),
    Number(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: "assets/images/numbers/number_eight.png",
      jpName: "hanchi",
      enName: "eight",
    ),
    Number(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: "assets/images/numbers/number_nine.png",
      jpName: "kyu",
      enName: "nine",
    ),
    Number(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: "assets/images/numbers/number_ten.png",
      jpName: "ju",
      enName: "ten",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context , index){
          return NumberItem(number: number[index]);
        }

        // children: [
        //   // NumberItem(number: one),
        //   // NumberItem(number: two),
        //   // NumberItem(number: three),
        //   // NumberItem(number: four),
        //   // NumberItem(number: five),
        //   // NumberItem(number: six),
        //   // NumberItem(number: seven),
        //   // NumberItem(number: eight),
        //   // NumberItem(number: nine),
        //   // NumberItem(number: ten),
        //   // NumberItem(number: ten),
        //
        //
        //   // NumberItem(number: number[0]),
        //   // NumberItem(number: number[1]),
        //   // NumberItem(number: number[2]),
        //   // NumberItem(number: number[3]),
        //   // NumberItem(number: number[4]),
        //   // NumberItem(number: number[5]),
        //   // NumberItem(number: number[6]),
        //   // NumberItem(number: number[7]),
        //   // NumberItem(number: number[8]),
        //   // NumberItem(number: number[9]),
        //
        //
        //   // ...getList(number),// لازم تعملي spread operator (...) علشان تفردي الليست جوه children
        // ],
      ),
    );
  }
}

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> listItems = [];
//   for (int i = 0; i < numbers.length; i++) {
//     listItems.add(NumberItem(number: numbers[i]));
//   }
//   return listItems;
// }
