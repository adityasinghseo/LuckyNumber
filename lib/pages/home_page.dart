import 'package:flutter/material.dart';
import 'package:random_quotes/pages/game_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black26,
        title: Center(
          child: Text(
            'Your Lucky Number',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: GoogleFonts.acme().fontFamily,
            ),
          ),
        ),
      ),
      body: GamePage(),
    );
  }
}
