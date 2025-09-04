import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/loginPage/SignIn.dart';
import 'package:flutter_application_1/widgets/startScreen/preLoginScreen2.dart';

class Preloginscreen extends StatefulWidget {
  const Preloginscreen({super.key});

  @override
  State<Preloginscreen> createState() => _PreloginscreenState();
}

class _PreloginscreenState extends State<Preloginscreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.heightOf(context);
    var w = MediaQuery.widthOf(context);

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: h,
              width: w,
              decoration: BoxDecoration(color: Colors.black),
              child: Image.asset(
                'assets/images/prelog1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          'Plan and organize your dream parties effortlessly.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Set the date, time, and location, and let the good times roll!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFBDBDBD),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF7C14F2),
                              ),
                            ),

                            SizedBox(width: 10),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Text(
                        'SKIP',
                        style: TextStyle(color: Color(0xFFBDBDBD)),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Preloginscreen2(),
                            ),
                          );
                        },
                        child: Icon(Icons.keyboard_arrow_right),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF7C14F2),
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
