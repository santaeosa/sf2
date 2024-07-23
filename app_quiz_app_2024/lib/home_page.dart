import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:app_quiz_app_2024/quiz_brain.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> scoreKeeper = [];

  QuizBrain quizBrain = QuizBrain();

  checkAnswer(bool userAnswer) {
    if (quizBrain.isFinished() == true) {
      // mensaje de finalizacion
      Alert(
        context: context,
        type: AlertType.info,
        title: "QuizApp",
        desc: "El cuestionario ha finalizado.",
        buttons: [
          DialogButton(
            child: Text(
              "Reiniciar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      quizBrain.restart();
      scoreKeeper.clear();
      setState(() {});
    } else {
      bool correctAnswer = quizBrain.getQuestionAnswer();
      if (correctAnswer == userAnswer) {
        scoreKeeper.add(
          Icon(Icons.check, color: Colors.greenAccent),
        );
      } else {
        scoreKeeper.add(
          Icon(Icons.close, color: Colors.redAccent),
        );
      }
      quizBrain.nextQuestion();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2d42),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  checkAnswer(true);
                },
                child: Text("Verdadero"),
                color: Colors.greenAccent,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  checkAnswer(false);
                },
                child: Text("Falso"),
                color: Colors.redAccent,
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
