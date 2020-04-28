import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = new AudioCache();
  void playSound(int n) {
    player.play('note$n.wav');
  }

  var colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];
  List<Widget> buildKey() {
    List<Widget> keys = new List();
    for (var i = 0; i < colors.length; i++) {
      keys.add(Expanded(
        child: FlatButton(
            color: colors[i],
            onPressed: () {
              playSound(i + 1);
            }),
      ));
    }
    return keys;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buildKey(),
          ),
        ),
      ),
    );
  }
}
