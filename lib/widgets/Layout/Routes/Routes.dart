import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_application_1/widgets/Layout/Layout.dart';
import 'package:flutter_application_1/widgets/ProfilePage/ProfilePage.dart';
import 'package:flutter_application_1/widgets/Layout/homePage/HomePage.dart';

class MainRoutes extends StatefulWidget {
  const MainRoutes({super.key});

  @override
  State<MainRoutes> createState() => _MainRoutesState();
}

class _MainRoutesState extends State<MainRoutes> {

  final GoRouter _router = GoRouter(
      initialLocation: '/home',
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return Layout(child: child);
          },
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const Homepage(),
            ),
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
