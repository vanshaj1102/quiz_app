import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import './start.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});
  @override
  State<quiz> createState() {
    return _quizstate();
  }
}

class _quizstate extends State<quiz> {
  var activescreen = 'start-screen';

  // @override
  // void initState() {
  //   activescreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activescreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenwidget = StartScreen(switchScreen);

    if (activescreen == 'question-screen') {
      screenwidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 93, 72, 187),
              Color.fromARGB(224, 64, 62, 192)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenwidget,
        ),
      ),
    );
  }
}
