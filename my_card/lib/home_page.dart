import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/xeny.jpg'),
            ),
            Text(
              'Xenia Padilla',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            )
          ],
        ),
      ),
    );
  }
}
