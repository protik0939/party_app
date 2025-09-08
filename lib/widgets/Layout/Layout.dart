import 'package:flutter/material.dart';

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
      // context.go('/$index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: Color(0xFF151044)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          shadowColor: Colors.transparent,
                          backgroundColor: currentIndex == 'home'
                              ? Color.fromARGB(50, 124, 20, 242)
                              : Color(0xFF151044),
                        ),
                        onPressed: () {
                          _changeRoute('home');
                        },
                        child: Icon(
                          Icons.home,
                          color: currentIndex == 'home'
                              ? Color.fromARGB(255, 124, 20, 242)
                              : Colors.grey,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.all(10),
                          backgroundColor: currentIndex == 'favorite'
                              ? Color.fromARGB(50, 124, 20, 242)
                              : Color(0xFF151044),
                        ),
                        onPressed: () {
                          _changeRoute('favorite');
                        },
                        child: Icon(
                          Icons.favorite,
                          color: currentIndex == 'favorite'
                              ? Color.fromARGB(255, 124, 20, 242)
                              : Colors.grey,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Favorite',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(width: 70),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          shadowColor: Colors.transparent,
                          backgroundColor: currentIndex == 'ticket'
                              ? Color.fromARGB(50, 124, 20, 242)
                              : Color(0xFF151044),
                        ),
                        onPressed: () {
                          _changeRoute('ticket');
                        },
                        child: Icon(
                          Icons.confirmation_num_outlined,
                          color: currentIndex == 'ticket'
                              ? Color.fromARGB(255, 124, 20, 242)
                              : Colors.grey,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Ticket',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          shadowColor: Colors.transparent,
                          backgroundColor: currentIndex == 'profile'
                              ? Color.fromARGB(50, 124, 20, 242)
                              : Color(0xFF151044),
                        ),
                        onPressed: () {
                          _changeRoute('profile');
                        },
                        child: Icon(
                          Icons.account_circle,
                          color: currentIndex == 'profile'
                              ? Color.fromARGB(255, 124, 20, 242)
                              : Colors.grey,
                          size: 30,
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  shadowColor: Color.fromARGB(143, 124, 20, 242),
                ),
                onPressed: () {},
                child: Icon(Icons.add, size: 50, color: Color(0xFF7C14F2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
