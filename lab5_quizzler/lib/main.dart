import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const XylophonePage(),
    );
  }
}

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _audioPlayer.setPlayerMode(PlayerMode.lowLatency);
  }

  void playSound(int soundNumber) {
    _audioPlayer.play(AssetSource('assets/sounds/note$soundNumber.wav'));
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Xylophone'),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
