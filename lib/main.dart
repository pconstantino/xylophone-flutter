import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(Colors.red, 1),
              buildButton(Colors.orange, 2),
              buildButton(Colors.yellow, 3),
              buildButton(Colors.green, 4),
              buildButton(Colors.teal, 5),
              buildButton(Colors.blue, 6),
              buildButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundId) {
    final player = AudioCache();
    player.play("note$soundId.wav");
  }

  Expanded buildButton(Color color, int soundId)
  {
    return Expanded(
      child: FlatButton(
        child: Text(""),
        color: color,
        onPressed: () {
          playSound(soundId);
        },
      ),
    );
  }
}
