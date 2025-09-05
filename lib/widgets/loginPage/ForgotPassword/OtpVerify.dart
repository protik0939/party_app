import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/loginPage/ForgotPassword/NewPasswordInput.dart';

class Otpverify extends StatefulWidget {
  const Otpverify({super.key});

  @override
  State<Otpverify> createState() => _OtpverifyState();
}

class _OtpverifyState extends State<Otpverify> {
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
              SizedBox(height: 50),
              Container(
                width: w,
                child: Text(
                  'Authentication Code',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: w,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Enter 4-digit code we just texted to your Phone number: ',
                          style: TextStyle(
                            color: Color(0xFF6F767E), // gray
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: '+108 *** **** 36',
                          style: TextStyle(
                            color: Colors.white, // white
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Pinput(
                onCompleted: (pin) => print(pin),
                defaultPinTheme: PinTheme(
                  height: w / 5,
                  width: w / 5,
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                submittedPinTheme: PinTheme(
                  height: w / 5,
                  width: w / 5,
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF666666),
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF2F2F2),
                  ),
                ),
              ),
              SizedBox(height: 60),
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
                      MaterialPageRoute(builder: (context) => NewPasswordInput()),
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
                        'VERIFY',
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
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text(
                  'RESEND CODE',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
