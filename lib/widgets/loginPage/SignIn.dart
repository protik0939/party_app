import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _viewPassword = false;

  void _changeVisibility() {
    _viewPassword = !_viewPassword;
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.heightOf(context);
    var w = MediaQuery.widthOf(context);

    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Color(0xFF060423),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/appIcon.png', height: 80, width: 80),
              SizedBox(height: 30),
              Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'Manrope_bold',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                'Welcome back, Let’s sign in to continue',
                style: TextStyle(fontFamily: 'Manrope', color: Colors.white),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email/Phone',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'example@gmail.com',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: _viewPassword ? false : true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _changeVisibility();
                          });
                        },
                        icon: Icon(
                          _viewPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
