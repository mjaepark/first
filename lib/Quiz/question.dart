import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({Key? key}) : super(key: key);
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.all(10),
      color: Color(0xff6DB193),
        child: Text(questionText,
        style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
        // child: ListView(
        //   scrollDirection: Axis.vertical,
        //   children: [
        //     Padding(padding: const EdgeInsets.fromLTRB(32, 30, 32, 0),
        //     child:
        //       Row(
        //         children: [
        //           Column(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Container(
        //                 color: Color(0xff6DB193),
        //                 child: Text(
        //                   'Q1',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: Color(0xffF4E5C2),
        //                     fontSize: 32,
        //                   ),
        //                 ),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.only(top: 6),
        //                 child: Container(
        //                   color: Color(0xff6DB193),
        //                   child: Text(
        //                     questionText,
        //                     style: TextStyle(
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.white,
        //                       fontSize: 20,
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(width: 100),
        //           Image.asset('asset/star.png')
        //         ],
        //       ),
        //     )
        //   ],
        // ),
    );
  }
}