import 'package:flutter/material.dart';
import 'package:music_player_ui/pages/music_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',

      home: MusicPlayer(),
    );
  }
}
