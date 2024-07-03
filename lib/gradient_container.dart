import 'package:flutter/material.dart';

import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  //list is a generic type container which means it could store any type
  //<Color> is telling that the type of list data is Color
  final List<Color> colours;
  //we are creating a constructor which is not necessary here.
  //super.key means take named argument key and pass it to stateless widget
  //its a short cut by flutter
  const GradientContainer({super.key, required this.colours});
  @override
  //widget here means a function build returns a type of widget
  Widget build(BuildContext context) {
    // see we are returning a container widget here
    return Container(
      decoration: BoxDecoration(
        //gradient: provides gradient
        gradient: LinearGradient(
          colors: colours,
          //begin: where gradient should start
          // end:where gradient should end
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
