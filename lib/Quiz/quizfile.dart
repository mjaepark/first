import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

//answer와 question합쳐서 퀴즈위젯 생성
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions; // 문제 목록들 저장
  final int questionIndex; // 현재 문제 번호
  final Function answerQuestion; // 정답을 선택했을 때 실행할 함수
  Quiz({
    required this.questions,required this.answerQuestion,required this.questionIndex
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers' ] as List<Map<String,Object>>).map((answer)
        {
          return Answer(() => answerQuestion(answer['score']),answer['text'] as String);
        }).toList()
      ],
    );
  }
}
