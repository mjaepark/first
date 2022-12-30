import 'package:flutter/material.dart';
import 'package:untitled1/MyPage/mypage.dart';
import 'package:untitled1/Quiz/quiz2.dart';
import 'package:untitled1/WordStudy/study.dart';
import 'package:untitled1/Pronounciation/voice.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  //상단문구
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white)
                    ),
                    height: 180,
                    width: 250,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 70.0),
                      child: Text(
                        '지콩이님 반가워요!\n오늘도 즐겁게 학습해봐요.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  //마이페이지 아이콘
                  SizedBox(
                    height: 180,
                    width: 102,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white
                      ),
                      //마이페이지로 이동
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const MyPage()),
                        );
                      },
                      child: Image(
                        image: AssetImage('assets/profile.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              //오늘의 단어 더보기
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 30,
                  width: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // side: BorderSide(color: Colors.white),
                    ),
                    onPressed: () {  },
                    child: Text('오늘의 단어 더보기 >',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              //오늘의 단어
              SizedBox(
                width: 500,
                height: 150,
                child: ElevatedButton(
                  //버튼 스타일
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffb4A384E),
                      // minimumSize: Size(500, 150),
                      // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const StudyPage()),
                    );
                  },
                  //버튼 안 문구
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '오늘의 단어',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: Text(
                          '밀키트',
                          style: TextStyle(
                            color: Color(0xffbFEF7A6),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              //오늘의 퀴즈
              SizedBox(
                width: 500, height: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffb6DB193),
                      // minimumSize: Size(500, 120),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const QuizPage()),
                    );
                    },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '오늘의 퀴즈',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '오늘의 퀴즈 풀고 포인트 받아가세요!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              //억양교정
              SizedBox(
                width: 500, height: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffbF4E5C2),
                      // minimumSize: Size(500, 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const VoiceFix()),
                    );
                  },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '억양교정',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '하루 10분 억양 점검으로 자연스럽게 교정해요!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
