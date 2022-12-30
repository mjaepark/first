import 'package:flutter/material.dart';
import 'package:untitled1/Quiz/quizresult.dart';
import 'quizfile.dart';
import 'answer.dart';
import 'question.dart';

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
      'questionText':'dkssud',
      'answers':[{'text':'hi','score':10},{'text':'hi','score':10}]
    },
    {
      'questionText':'loook',
      'answers':[{'text':'hi','score':10},{'text':'hi','score':10}]
    },
  ];
  var _questionIndex=0;
  var _totalScore=0;
  void _answerQuestion(int score){
    _totalScore += score;
    setState((){
      _questionIndex=_questionIndex+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6DB193),
      appBar: AppBar(
        backgroundColor: Color(0xff6DB193),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text('오늘의 퀴즈'),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          //mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 30, 32, 0),
              child:
                  //상단문구
                  Row(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Color(0xff6DB193),
                          child: Text(
                            'Q1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF4E5C2),
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Container(
                            color: Color(0xff6DB193),
                            child: Text(
                              'hi',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(width: 100),
                  Image.asset(
                    'assets/star.png',
                  ),
                ],
              ),
            ),

            //몇번째 퀴즈
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 30,
                width: 160,
                child: Text(
                  '1/10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            //줄
            Row(mainAxisSize: MainAxisSize.max, children: [
              SizedBox(
                width: 92.54,
                height: 4,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xffFBFBFB),
                ),
              ),
            ]),

            SizedBox(
              width: 2,
              height: 36,
            ),

            //퀴즈
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //1
                  SizedBox(
                    width: 137,
                    height: 160,
                    child: ElevatedButton(
                      //버튼 스타일
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF4E5C2),
                        // minimumSize: Size(500, 150),
                        // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      onPressed: () {},
                      //버튼 안 문구
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '01',
                                style: TextStyle(
                                  color: Color(0xff323232),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '화학빨래',
                              style: TextStyle(
                                color: Color(0xff323232),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 16,
                    height: 1,
                  ),

                  //2
                  SizedBox(
                    width: 137,
                    height: 160,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffF4E5C2),
                          // minimumSize: Size(500, 120),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '02',
                                style: TextStyle(
                                  color: Color(0xff323232),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '빨래방치',
                              style: TextStyle(
                                color: Color(0xff323232),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),

            SizedBox(
              height: 16,
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //3
                  SizedBox(
                    width: 137,
                    height: 160,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffF4E5C2),
                          // minimumSize: Size(500, 120),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '02',
                                style: TextStyle(
                                  color: Color(0xff323232),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '빨래방치',
                              style: TextStyle(
                                color: Color(0xff323232),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 16,
                    height: 1,
                  ),

                  //4
                  SizedBox(
                    width: 137,
                    height: 160,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffF4E5C2),
                          // minimumSize: Size(500, 120),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      onPressed: () {},
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                '02',
                                style: TextStyle(
                                  color: Color(0xff323232),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '빨래방치',
                              style: TextStyle(
                                color: Color(0xff323232),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),

            SizedBox(height: 36),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //다음
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffD2D2D2),
                          // minimumSize: Size(500, 120),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Qresult()),
                        );
                      },
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text(
                                '다음',
                                style: TextStyle(
                                  color: Color(0xff323232),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),

            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/glass_emoticon.png',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/smile_emoticon.png',
                  ),
                  SizedBox(
                    width: 21,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
