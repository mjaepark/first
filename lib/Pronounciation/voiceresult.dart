import 'package:flutter/material.dart';
import 'package:untitled1/MyPage/mypage.dart';

class VoiceResult extends StatefulWidget {
  const VoiceResult({Key? key}) : super(key: key);

  @override
  State<VoiceResult> createState() => _VoiceResultState();
}

class _VoiceResultState extends State<VoiceResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb6DADB1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xffb6DADB1),
          title: Text('억양교정', style: TextStyle(color: Colors.white),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text('버튼을 누르고 아래 문장을 따라읽어 보세요.',
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 50,),
              Container(
                width: 350,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '생각이란 생각하면 할수록 생각나는 것이\n'
                        '생각이므로 생각하지 않는 생각이\n'
                        '좋은 생각이라 한다',
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 105,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                  color: Color(0xffbF4E5C2)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
