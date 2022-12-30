import 'package:flutter/material.dart';

class Sresult extends StatefulWidget {
  const Sresult({Key? key}) : super(key: key);

  @override
  State<Sresult> createState() => _Sresult();
}

class _Sresult extends State<Sresult> {
  @override
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
        title: Text('오늘의 단어'),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 218,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "공부완료",
                    style: TextStyle(
                        fontSize: 32,
                        color: const Color(0xFFF4E5C2),
                        fontWeight: FontWeight.w900,
                        fontFamily: "Pretendard"),
                  ),
                ]),
            SizedBox(
              width: 6,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "와우! 축하해요!",
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Pretendard"),
                  ),
                ]),
            SizedBox(
              height: 53,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "10",
                    style: TextStyle(
                        fontSize: 80,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w900,
                        fontFamily: "Pretendard"),
                  ),
                  Text(
                    "개",
                    style: TextStyle(
                        fontSize: 32,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w900,
                        fontFamily: "Pretendard"),
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/score.png',
                  ),
                ]),
            SizedBox(
              height: 180,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/glass_emoticon_2.png',
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/smile_emoticon_2.png',
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
