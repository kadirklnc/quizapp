import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.oneTap});
  final String answerText;
  final void Function() oneTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: oneTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            backgroundColor: const Color.fromARGB(255, 75, 26, 161),
            foregroundColor: Colors.white),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ));
  }
}
