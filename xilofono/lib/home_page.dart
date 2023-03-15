import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Audio sonido1 = Audio.load('assets/sounds/sound1.wav');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Ionicons.skull,
          size: 40,
          color: Color.fromARGB(255, 11, 143, 183),
        ),
      ),
      body: Container(
        child: TextButton(
          child: Text('Press'),
          onPressed: () {
            sonido1.play();
          },
        ),
      ),
    );
  }
}
