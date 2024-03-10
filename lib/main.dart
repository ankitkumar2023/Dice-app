import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var diceNumber = 1;
  var diceNumber1 = 1;

  void diceFace(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
      diceNumber1 = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text(
            'Dicee App',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  diceFace();
                },
                child: Image.asset('images/dice$diceNumber.png'),
                ),
              ),
            Expanded(
              child: TextButton(
                onPressed: (){
                  diceFace();
                },
                child: Image.asset('images/dice$diceNumber1.png'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


