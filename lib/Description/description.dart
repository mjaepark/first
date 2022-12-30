import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled1/InitScreens/login.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IntroductionScreen(
        scrollPhysics: const BouncingScrollPhysics(),
        //list of page view models
        pages: [],
        rawPages: [],
        //when something changes
        onChange: (e){},
        //when done pressed
        onDone: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context)=> const LoginPage()),
          // );
        },
        onSkip: (){},
        showSkipButton: true,
        skip: const Icon(Icons.skip_next),
        next: const Icon(Icons.forward),
        done: const Text("Done",style: TextStyle(fontWeight: FontWeight.w600)),

        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).progressIndicatorTheme.color!,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
          )
        ),
      ),
    );
  }
}

