// tons of hard coded values

import 'package:flutter/material.dart';

import 'ui/details_screen.dart';
import 'package:go_router/go_router.dart';
import 'ui/homepage.dart';

/* 
Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, title: '', 
theme: ThemeData( primarySwatch: Colors.blue, ), home: const MyHomePage(), ); }
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
        title: "MyApp",
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const MyHomePage(),
        routes: <GoRoute>[
          GoRoute(
            path: 'details',
            builder: (BuildContext context, GoRouterState state) =>
                const Details(),
          ),
        ],
      ),
    ],
  );
}
