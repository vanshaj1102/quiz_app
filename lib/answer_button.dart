import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final void Function() onTap;

  final String answerText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          backgroundColor: Color.fromARGB(255, 68, 2, 149),
          foregroundColor: Color.fromARGB(239, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(43))),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
