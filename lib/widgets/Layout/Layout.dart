import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/widgets/ProfilePage/ProfilePage.dart';
import 'package:flutter_application_1/widgets/Layout/homePage/HomePage.dart';
import 'package:flutter_application_1/widgets/Layout/BottomNavBar/BottomNavBar.dart';

class Layout extends StatefulWidget {
  final Widget child;
  const Layout({super.key, required this.child});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  String currentIndex = 'home';

  void _changeRoute(String index) {
    setState(() {
      currentIndex = index;
      context.go('/$index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 70,
        decoration: BoxDecoration(color: Color(0xFF151044)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                _changeRoute('home');
              },
              child: Icon(Icons.home),
            ),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.favorite)),
            SizedBox(width: 50),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.confirmation_num_outlined),
            ),
            ElevatedButton(
              onPressed: () {
                _changeRoute('profile');
              },
              child: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
