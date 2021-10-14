import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void playNote(int noteNumber) async {
    await audioPlayer.setAsset('assets/' + noteNumber.toString() + '.wav');
    audioPlayer.play();
  }

  Expanded buildKey(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
        child: SizedBox.shrink(),
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
