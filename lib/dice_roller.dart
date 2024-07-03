import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  //whenever this method will be called, a random no will be generated
  //and stored in currentDiceRoll
  void rollDice() {
    setState(() {
      //Random means random no
      //.nextInt created a random int no. () takes the max random no
      // we write +1 because we want to implement from 1 to 6 not 0 to 6
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainaxissize mean how much space it contains vertically
      //bydefailt its max which means full screen vertically
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/images/dice-$currentDiceRoll.png',
              width: 200),
        ),
        TextButton(
          //we are just saying rollDice not rollDice()
          //because we dont want to run this function,
          //instead we just want to pointer to that function
          //it will go up, find and then run that function
          onPressed: rollDice,
          //.styleFrom is used for styling of text button's text
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
