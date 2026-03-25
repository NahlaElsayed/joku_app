import 'package:flutter/material.dart';
import 'package:toku_app/Models/number.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.orange,
      child: Row(
        children: [
          Container(color: Color(0xffFFF8DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: (){
              // sound play
            },
            icon: Icon(Icons.play_arrow, color: Colors.white),)

        ],
      ),
    );
  }
}
