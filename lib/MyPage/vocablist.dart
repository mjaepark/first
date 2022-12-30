import 'package:flutter/material.dart';

class My_Word extends StatelessWidget {
  const My_Word({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocabulary list',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyWord(),
    );
  }
}

class MyWord extends StatelessWidget {
  const MyWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Color(0xff323232),
      appBar: AppBar(
        title: Text('내 단어장'),
        titleTextStyle: TextStyle(
            fontFamily: 'Pretendard',
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold),
        backgroundColor: Color(0xff323232),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
          itemCount: title2.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Color(0xffF4E5C2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title2[index],
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

var title2 = [
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
  '밀키트',
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
