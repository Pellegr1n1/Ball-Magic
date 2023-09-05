import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pergunte Qualquer Coisa'),
        backgroundColor: Colors.blue,
      ),
      body: const BallMagic(),
      backgroundColor: const Color.fromARGB(255, 75, 198, 255),
    ),
  ));
}

class BallMagic extends StatefulWidget {
  const BallMagic({super.key});

  @override
  State<BallMagic> createState() => _BallMagicState();
}

class _BallMagicState extends State<BallMagic> {
  var numberBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {
                setState(() {
                  var random = Random();
                  numberBall = random.nextInt(5) + 1;
                });
              },
              child: Image.asset("Image/ball$numberBall.png"),
            ),
          )
        ],
      ),
    );
  }
}
