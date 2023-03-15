import 'package:flutter/material.dart';
import 'package:dices/dice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: const Dice(),
    );
  }
}
