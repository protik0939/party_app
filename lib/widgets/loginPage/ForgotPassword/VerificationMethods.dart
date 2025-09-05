import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/loginPage/ForgotPassword/OtpVerify.dart';

class VerificationMethods extends StatefulWidget {
  const VerificationMethods({super.key});

  @override
  State<VerificationMethods> createState() => _VerificationMethodsState();
}

class _VerificationMethodsState extends State<VerificationMethods> {
  String _method = "sms";

  void changeMethod(String x) {
    setState(() {
      _method = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.widthOf(context);
    var h = MediaQuery.heightOf(context);

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        color: Color(0xFF060423),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 40,
            bottom: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(shape: CircleBorder()),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                  ),
                  Text('Forget Password'),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/verify.png', width: 2 * w / 3),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Select which contact details should we use to reset your password.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 70,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: _method == 'sms'
                            ? Colors.deepPurple
                            : Colors.white,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    changeMethod("sms");
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: _method == "sms"
                                ? Colors.deepPurple
                                : Colors.white,
                          ),
                        ),
                        child: Icon(
                          Icons.message_rounded,
                          color: Color(0xFF7C14F2),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'via SMS',
                            style: TextStyle(
                              color: Color(0xFF6F767E),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '+108*** ****36',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: _method == 'mail'
                            ? Colors.deepPurple
                            : Colors.white,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    changeMethod("mail");
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 255, 255, 255),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: _method == "mail"
                                ? Colors.deepPurple
                                : Colors.white,
                          ),
                        ),
                        child: Icon(Icons.mail, color: Color(0xFF7C14F2)),
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'via Email',
                            style: TextStyle(
                              color: Color(0xFF6F767E),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'jer***@gmail.com',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Otpverify(),
                      ),
                    );
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF4E139A), Color(0xFF62098C)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Manrope_bold',
                          fontSize: 16,
                        ),
                      ),
                    ),
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
