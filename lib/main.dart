//import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
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
  void changeiceface(){
    setState(() {
      leftdiceno = Random().nextInt(6)+1;
      rightdiceno = Random().nextInt(6)+1;
      print('leftdiceno = $leftdiceno');
    });
  }
  int leftdiceno = 1;
  int rightdiceno = 1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:TextButton(
              onPressed: (){
               changeiceface();
              },
              child: Image.asset('images/dice$leftdiceno.png'),
            ),
          ),
          Expanded(
            child:TextButton(
              onPressed: (){
               changeiceface();
              },
              child: Image.asset('images/dice$rightdiceno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
