import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';
import 'package:untitled1/InitScreens/mainpage.dart';
import 'package:untitled1/MyPage/quizrecord.dart';
import 'package:untitled1/MyPage/talk.dart';
import 'package:untitled1/MyPage/vocablist.dart';
import 'package:untitled1/Pronounciation/voice.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //상단 내비게이션바
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const MainPage()),
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text('마이페이지', style: TextStyle(color: Colors.black),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              //프로필 아이콘
              Row(
                children: [
                  Image(image: AssetImage('assets/profile.png'),width: 80,height: 80,),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Text('지콩이',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('포인트 4300P'),
                      SizedBox(width: 10,),
                      Container(
                        //color: Color(0xffbAF3838),
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffbAF3838),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('열혈공부러',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //오늘의 단어
              SizedBox(width: 500, height: 80,),
              //카드 목록
              Row(
                children: [
                  //내 단어장
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffb323232),
                        // minimumSize: Size(500, 150),
                        // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const MyWord()),
                          );
                        },
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                                child: Text('내 단어장',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )),
                            SizedBox(height: 30,),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image(image: AssetImage('assets/note.png'),
                                width: 50,height: 50,
                              ),
                            )
                          ],
                        ),
                    ),
                  ),
                  SizedBox(width: 10),
                  //퀴즈 기록
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffb8559A5),
                        // minimumSize: Size(500, 150),
                        // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const QuizRecord()),
                        );
                      },
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('퀴즈 기록',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                          SizedBox(height: 30,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image(image: AssetImage('assets/stars.png'),
                              width: 50,height: 50,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  //억양 교정
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffb6DB193),
                        // minimumSize: Size(500, 150),
                        // visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const MyAccent()),
                        );
                      },
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('억양 교정',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              )),
                          SizedBox(height: 30,),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image(image: AssetImage('assets/mike.png'),
                              width: 50,height: 50,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 75,),
              //문구
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '지콩님이 캔두와 공부한지 벌써\n23일이나 되었어요!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 25,),
              //가장 어려웠던 단어
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
                  onPressed: () {},
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '지콩님이 가장 어려워했던 단어에요!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: Text(
                          '에어컨',
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
            ],
          ),
        ),
      ),
    );
  }
}
