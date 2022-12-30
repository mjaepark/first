import 'package:flutter/material.dart';

class My_Accent extends StatelessWidget {
  const My_Accent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accent list',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyAccent(),
    );
  }
}

class MyAccent extends StatelessWidget {
  const MyAccent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Color(0xff6DADB1),
      appBar: AppBar(
        title: Text('억양교정'),
        titleTextStyle: TextStyle(
            fontFamily: 'Pretendard',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold),
        backgroundColor: Color(0xff6DADB1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Color(0xffF4E5C2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title[index],
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

var title = [
  '72%',
  '38%',
  '59%',
  '92%',
  '67%',
  '82%',
  '42%',
  '93%',
  '72%',
  '86%',
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
