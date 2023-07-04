import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioPlayer();
                  player.play(AssetSource('note$soundnumber.wav'));
  }
   Expanded buildkey({required color,required int soundnumber}) {
     return  Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: color,
                  ),
                  onPressed: () {
                    playsound(soundnumber);
                  },
                  child: Text('Click Me'),
                ),
              );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                buildkey(color: Colors.amber, soundnumber: 1),   
                buildkey(color: Colors.blue, soundnumber: 2),
                buildkey(color: Colors.brown, soundnumber: 3),
                buildkey(color: Colors.deepOrange, soundnumber: 4),
                buildkey(color: Colors.green, soundnumber: 5),
                buildkey(color: Colors.purple, soundnumber: 6),
                buildkey(color: Colors.red, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}