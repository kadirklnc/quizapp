import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 240,
            color: const Color.fromARGB(119, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          Text('Quiz App',
              style: GoogleFonts.lato(color: Colors.white, fontSize: 30)),
          const SizedBox(
            height: 15,
          ),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text('START'))
        ],
      ),
    );
  }
}
