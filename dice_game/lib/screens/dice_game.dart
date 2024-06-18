import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dice_game/screens/home.dart';


class DiceHomePage extends StatefulWidget {
  @override
  State<DiceHomePage> createState() => _DiceHomePageState();
}

class _DiceHomePageState extends State<DiceHomePage> {
  int _currentDice = 1;

  void _rollDice() {
    setState(() {
      _currentDice = Random().nextInt(6) + 1;
      // generates a number between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
            color: Colors.deepPurpleAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Let's play",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/dice-$_currentDice.png',
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _rollDice,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(169, 17, 182, 1),
                        minimumSize: Size(150, 50)),
                    child: Text(
                      'Roll Dice $_currentDice',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height: 50,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(169, 17, 182, 1),
                        minimumSize: Size(150, 50)),
                    child: const Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            )));
  }
}
