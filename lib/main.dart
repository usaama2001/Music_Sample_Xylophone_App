import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      AudioPlayer audioPlayer = AudioPlayer();
      audioPlayer.play(AssetSource('note$soundNumber.wav'));
    }

    Expanded buildKey(Color color, int soundNumber) {
      return Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: const EdgeInsets.only(left: 150)),
          onPressed: () {
            playSound(soundNumber);
          },
          child: const Text(''),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
