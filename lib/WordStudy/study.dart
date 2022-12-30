import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Quiz/quizresult.dart';
import 'package:flip_card/flip_card.dart';
import 'package:untitled1/WordStudy/studyresult.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:untitled1/models/wordinfo.dart';

FirebaseDatabase database = FirebaseDatabase.instance;
DatabaseReference ref = FirebaseDatabase.instance.ref();

class StudyPage extends StatefulWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  State<StudyPage> createState() => _StudyPage();
}

class _StudyPage extends State<StudyPage> {
  List<WordInfo> workbookllist = <WordInfo>[];

  @override
  void initState(){
    super.initState();

    for (int i=0; i<100; i++){
      workbookllist.add(new WordInfo(workbookName: "단어장 $i"));
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4A384E),
        appBar: AppBar(
          backgroundColor: Color(0xff4A384E),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title: Text('ㅎㅇ'),
        ),
        body: Center(
          child: ListView(scrollDirection: Axis.vertical,
              itemExtent: workbookllist.length,
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
                              color: Color(0xff4A384E),
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
                                color: Color(0xff4A384E),
                                child: Text(
                                  '오늘의 단어를\n공부해봅시다!',
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
                SizedBox(height: 150,),
                //단어카드
                Align(
                  alignment: Alignment.center,
                  child: FlipCard(
                    fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
                    direction: FlipDirection.HORIZONTAL, // default
                    front: Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Text('밀키트',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    back: Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      child: Text('손질된 식재료 및 양념을\n포함하는 조리 직전\n간편식',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                SizedBox(height: 150,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //다음
                      SizedBox(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffF4E5C2),
                              // minimumSize: Size(500, 120),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0))),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sresult()),
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
                                    '저장하기',
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

              ]
          ),
        )
    );
  }
}
