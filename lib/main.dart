import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Widget buildkey({int note, Color col}) {
    return Expanded(
      child: Container(
        color: col,
        child: TextButton(
          onPressed: () {
            playsound(note);
          },
        ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildkey(note: 1, col: Colors.red),
              buildkey(note: 2, col: Colors.orange),
              buildkey(note: 3, col: Colors.yellow),
              buildkey(note: 4, col: Colors.green),
              buildkey(note: 5, col: Colors.teal),
              buildkey(note: 6, col: Colors.blue),
              buildkey(note: 7, col: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
