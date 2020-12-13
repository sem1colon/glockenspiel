import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  // Play Notes
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('$noteNumber.wav');
  }

  // Create Keys
  Expanded buildKey(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.green, 4),
            buildKey(Colors.blue, 5),
            buildKey(Colors.indigo, 6),
            buildKey(Colors.deepPurple, 7),
          ],
        ),
      ),
    ));
  }
}
