import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color((0xff5f0f40)),
      body: SafeArea(child: QuizPage()),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];

  List<String> preguntas = [
    '¿Los glóbulos rojos viven 4 meses?',
    'El cuerpo humano adulto tiene 306 huesos',
    'La cobalamina es una vitamina'
  ];
  List<bool> respuestas = [
    true,
    false,
    true,
  ];
  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              preguntas[numeroPregunta],
              style: const TextStyle(fontSize: 30, color: Colors.white),
            )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffe36414),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        bool respuestaCorrecta = respuestas[numeroPregunta];
                        if (respuestaCorrecta == true) {
                          print('la respuesta fue correcta');
                        } else {
                          print('la respuesta fue incorrecta');
                        }
                        numeroPregunta++;

                        puntuacion.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      });
                    },
                    child: const Text(
                      'Verdadero',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfffb8b24),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        bool respuestaCorrecta = respuestas[numeroPregunta];
                        if (respuestaCorrecta == false) {
                          print('la respuesta fue correcta');
                        } else {
                          print('la respuesta fue incorrecta');
                        }
                        numeroPregunta++;

                        puntuacion.add(Icon(
                          Icons.close,
                          color: Colors.redAccent,
                        ));
                      });
                    },
                    child: const Text(
                      'Falso',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
          ),
        ),
        Row(
          children: puntuacion,
        )
      ],
    );
  }
}
