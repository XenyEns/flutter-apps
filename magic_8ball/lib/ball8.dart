import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Ball8 extends StatefulWidget {
  const Ball8({super.key});

  @override
  State<Ball8> createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('assets/images/1.png'));
  }
}
