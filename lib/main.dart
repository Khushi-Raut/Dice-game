import 'dart:math';
import 'package:flutter/material.dart';

void main() {
 runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
           home:Scaffold(
             backgroundColor: Colors.deepPurpleAccent,
             appBar: AppBar(
               backgroundColor: Colors.deepPurple[100],
              title:
              const Center(
                  child: Text("Dice",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize:30.0,

                    ),
                  ),
              ),

             ),
             body: DicePage(),
           ),
         ),
       );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum=1;
  int rightDiceNum=1;
  void DiceNum(){
    setState(() {
      leftDiceNum=Random().nextInt(6)+1;
      rightDiceNum=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:TextButton (
              onPressed: (){
                DiceNum();
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),


          Expanded(
            child:TextButton (
              onPressed: (){
                DiceNum();
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),

        ],

      ),
    );
  }
}




