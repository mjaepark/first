import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        // width: double.infinity,
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
          onPressed: () {
                selectHandler();
          },
          //버튼 안 문구
          child: Row(
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
                  answerText,
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
    );
  }
}
