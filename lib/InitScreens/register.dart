import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/InitScreens/mainpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  FirebaseFirestore fireStore=FirebaseFirestore.instance;

  // TODO: Add text editing controllers (101)
  final _nicknameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  String _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();


  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6DB193),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/login_top.png'),
              ],
            ),
            const SizedBox(height: 50.0),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // [Name]
            TextField(
              controller: _nicknameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: '닉네임을 입력하세요',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'ID를 입력하세요',
              ),
            ),
            // spacer
            const SizedBox(height: 12.0),
            // [Password]
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: '비밀번호를 입력하세요',
              ),
              obscureText: true,
            ),

            // TODO: Add buttons (101)

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff323232), // Background color
              ),
              child: const Text('회원가입'),
              onPressed: () {
                // TODO: Show the next page (101)
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const MainPage()),
                );
              },
            ),

            TextButton(
              style: TextButton.styleFrom(
                primary: Color(0xff323232),
              ),
              child: const Text('환영합니다!'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
