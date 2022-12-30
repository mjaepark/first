import 'package:flutter/material.dart';
import 'package:untitled1/Description/description.dart';
import 'package:untitled1/InitScreens/login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CanDo',
      theme: ThemeData(
        fontFamily: 'text',
        primaryColor: Colors.white,
      ),
      home: const LoginPage(),
    );
  }
}
