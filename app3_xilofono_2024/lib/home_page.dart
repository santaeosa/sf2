import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  void playNote(int note) {
    final player = AudioPlayer();
    player.setSourceAsset("audio/note$note.wav");
    player.play(
      AssetSource("audio/note$note.wav"),
    );
  }

  Widget buildKey(Color colorKey, int note) {
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Xylophone App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Color(0xffe63946), 1),
          buildKey(Color(0xfff1faee), 2),
          buildKey(Color(0xffa8dadc), 3),
          buildKey(Color(0xff457b9d), 4),
          buildKey(Color(0xff1d3557), 5),
          buildKey(Color(0xffffb703), 6),
          buildKey(Color(0xfffb8500), 7),
        ],
      ),
    );
  }
}
