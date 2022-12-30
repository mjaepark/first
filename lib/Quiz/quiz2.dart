import 'package:flutter/material.dart';
import 'package:untitled1/Quiz/quizfile.dart';
// import 'package:untitled1/Quiz/quizresult.dart';
import 'package:untitled1/Quiz/result.dart';

class QuizPage extends StatefulWidget {
  // const QuizPage({Key? key, required this.questionText}) : super(key: key);
  const QuizPage({Key? key}) : super(key: key);
  // final String questionText;
  // QuizPage(this.questionText);

  @override
  State<QuizPage> createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  final _questions = const[
    {
      'questionText': '장인은 무슨 의미인가요?',
      'answers': [{'text': '가시아버지', 'score': 10}, {'text': '앞등', 'score': 0},
        {'text': '설기과자', 'score': 0}, {'text': '자부니', 'score': 0}]
    },
    {
      'questionText': '스위치는 무슨 의미인가요?',
      'answers': [{'text': '차굴', 'score': 0}, {'text': '앞등', 'score': 0},
        {'text': '맞혼인', 'score': 0}, {'text': '전기여닫개', 'score': 10}]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xff6DB193),
          appBar: AppBar(
            backgroundColor: const Color(0xff6DB193),
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
            title: const Text('오늘의 퀴즈'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
              : Result(_totalScore)
      ),
    );
  }
}
