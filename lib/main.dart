import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  DiceState createState() => DiceState();
}

class DiceState extends State<DicePage> {
  int leftDiceNumber =2;
  int rightDiceNumber =1;

  void changeDice(){
    setState(() {
      leftDiceNumber =Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
          children: <Widget>[
            // expended  is used to expand a widget fully...
            Expanded(
              child:Padding(
                padding:EdgeInsets.all(16.0),
                child:FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
                child:Padding(
                  padding:EdgeInsets.all(16.0),
                  child:FlatButton(
                    onPressed: (){
                      changeDice();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                )),
          ]
      ),
    );
  }
}
