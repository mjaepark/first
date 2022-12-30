import 'package:flutter/material.dart';

class Quiz_Record extends StatelessWidget {
  const Quiz_Record({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Record',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QuizRecord(),
    );
  }
}

class QuizRecord extends StatelessWidget {
  const QuizRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Color(0xff8559A5),
      appBar: AppBar(
        title: Text('퀴즈기록'),
        titleTextStyle: TextStyle(
            fontFamily: 'Pretendard',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold),
        backgroundColor: Color(0xff8559A5),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
          itemCount: title1.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Color(0xffF4E5C2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title1[index],
                    style: const TextStyle(
                        fontFamily: 'Pretendard',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 51,
                  ),
                  SizedBox(
                    width: width,
                    child: Text(
                      date[index],
                      style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

var title1 = [
  '4/10',
  '4/10',
  '4/10',
  '4/10',
  '4/10',
  '4/10',
  '4/10',
  '4/10',
  '4/10',
  '4/10',
];

var date = [
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
  '2022.08.12',
];
