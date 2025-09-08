import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ProfilePage/ProfilePage.dart';
import 'package:flutter_application_1/widgets/Layout/homePage/HomePage.dart';

class BottomNavBar extends StatefulWidget {
  final Widget child;
  const BottomNavBar({super.key, required this.child});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Color(0xFF151044)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
