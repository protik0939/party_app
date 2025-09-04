import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/startScreen/preLoginScreen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Preloginscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.heightOf(context);
    var w = MediaQuery.widthOf(context);

    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Image.asset(
          'assets/images/splash_screen.png',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
