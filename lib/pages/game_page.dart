import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int img = Random().nextInt(6) + 1;
  var diceSum = [1, 2, 3, 4, 5, 6];
  var desName = ['A', 'b', 'c', 'D', 'E', 'F'];
  var sum = 0;
  var changeDes = 1;

  void clickimg() {
    img = Random().nextInt(6) + 1;
    sum = diceSum[img - 1];
    changeDes = desName[img - 1] as int;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: Image.asset('assets/images/dice$img.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              '$changeDes You got $sum',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontFamily: GoogleFonts.acme().fontFamily),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(bottom: 15, top: 15, left: 20, right: 20),
                  onPrimary: Colors.white,
                  primary: Colors.deepOrange,
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontFamily: GoogleFonts.ubuntu().fontFamily,
                  )),
              onPressed: () {
                setState(() {});
                clickimg();
              },
              child: Text('Try Again'),
            ),
          ),
        ],
      ),
    );
  }
}
