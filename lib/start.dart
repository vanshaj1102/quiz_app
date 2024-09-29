import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/image/assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(211, 255, 255, 255),
          ),
          const SizedBox(height: 81),
          const Text(
            'let us learn',
            style: TextStyle(
              color: Colors.white,
              fontSize: 31,
            ),
          ),
          const SizedBox(height: 26),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromARGB(66, 208, 224, 227),
              ),
              icon: Icon(Icons.arrow_right_alt_outlined),
              label: const Text('START')),
        ],
      ),
    );
  }
}
