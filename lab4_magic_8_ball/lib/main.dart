import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Magic8BallPage(),
    );
  }
}

class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({super.key});

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber = 1;

  void askQuestion() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text('Magic 8 Ball'),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/ball$ballNumber.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: askQuestion,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                'Ask Me Anything',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

