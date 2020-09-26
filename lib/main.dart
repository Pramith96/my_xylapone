import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void mySound (int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded playSound({Color color, int soundNumber}){
   return Expanded(
      child: FlatButton(
        onPressed: () {
          mySound(soundNumber);
        },
        color: color,
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
              playSound(color: Colors.red , soundNumber: 1),
              playSound(color: Colors.orange , soundNumber: 2),
              playSound(color: Colors.yellow , soundNumber: 3),
              playSound(color: Colors.green , soundNumber: 4),
              playSound(color: Colors.blue , soundNumber: 5),
              playSound(color: Colors.indigo , soundNumber: 6),
              playSound(color: Colors.purple , soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
