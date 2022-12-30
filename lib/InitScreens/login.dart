import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/InitScreens/mainpage.dart';
import 'package:untitled1/InitScreens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
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
            const SizedBox(height: 120.0),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // [Name]
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
              child: const Text('로그인'),
              onPressed: () {
                // TODO: Show the next page (101)
                // Navigator.pop(context);
                FirebaseAuth.instance.signInAnonymously();
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
              child: const Text('계정이 없으신가요? 회원가입'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const SignupPage()),
                );              },
            ),
          ],
        ),
      ),
    );
  }
}
