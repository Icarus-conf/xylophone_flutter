import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'color_utils.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  Color color1 = hexStringToColor("#131B23");

  Color color2 = hexStringToColor("#233D4D");

  Color color3 = hexStringToColor("#619B8A");

  Color color4 = hexStringToColor("#C49BBB");

  Color color5 = hexStringToColor("#D1BCE3");

  Color color6 = hexStringToColor("#E9F1F7");

  Color color7 = hexStringToColor("#230C33");

  late int noteNumber;

  void notePLayerAssit(noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({Color, noteNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          notePLayerAssit(noteNumber);
        },
        child: Container(),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildKey(noteNumber: 1, Color: color1),
              buildKey(noteNumber: 2, Color: color2),
              buildKey(noteNumber: 3, Color: color3),
              buildKey(noteNumber: 4, Color: color4),
              buildKey(noteNumber: 5, Color: color5),
              buildKey(noteNumber: 6, Color: color6),
              buildKey(noteNumber: 7, Color: color7),
            ],
          ),
        ),
      ),
    );
  }
}
