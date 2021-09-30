import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return (
  runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red.shade900,
      appBar: AppBar(
              backgroundColor: Colors.white,
                title:Center(
                 child: Text(
                          'LUDO',
                   style: TextStyle(
                     fontSize: 30.0,
                     color: Colors.red.shade900,
                     letterSpacing:1.5,
                   ),
                 ),
                ),
             ),
          body: DicePage(),
          ),
        ),
      )
    );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDice = 1;
  int rightDice = 1;
  void changeDiceFace()
  {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    }
    );
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child:TextButton(
                  onPressed: () {
              changeDiceFace();
              print('dice number  = $leftDice');
              print('dice number  = $rightDice');
              }, 
          child:Image.asset('images/dicee$leftDice.png'),

    ),
          ),
          Expanded(
          child:TextButton(
          onPressed: () {
              changeDiceFace();
              print('dice number  = $leftDice');
              print('dice number  = $rightDice');
             },
          child:Image.asset('images/dicee$rightDice.png'),
    ),
    ),
    ],
    ),
    );
  }
}


