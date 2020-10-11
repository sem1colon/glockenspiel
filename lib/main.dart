import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: Colors.deepPurple,
              onPressed: () {
                playNote(1);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.indigo,
              onPressed: () {
                playNote(2);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                playNote(3);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                playNote(4);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.yellow,
              onPressed: () {
                playNote(5);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.orange,
              onPressed: () {
                playNote(6);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                playNote(7);
              },
            ),
          ),
        ],
      ),
    ),
  )));
}

void playNote(int noteNumber) {
  final player = AudioCache();
  player.play('$noteNumber.wav');
}
