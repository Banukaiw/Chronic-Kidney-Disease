import 'package:ckd/CkdPred.dart';
import 'package:ckd/disease.dart';
import 'package:ckd/forcast.dart';
import 'package:ckd/registerPage.dart';
import 'package:ckd/suggestDietPlan.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'actor.dart';
import 'home.dart';
import 'loginPage.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'Main',
      path: '/',
      builder: (context, state) => MyHomePage(title: 'C-K-D'),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => Home(),
    ),
    GoRoute(
      name: 'CkdPred',
      path: '/CkdPred',
      builder: (context, state) => CkdPred(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
      name: 'forcast',
      path: '/forcast',
      builder: (context, state) => ForeCast(),
    ),
    GoRoute(
      name: 'SuggestDPlan',
      path: '/SuggestDPlan',
      builder: (context, state) => SuggestDietPlan(),
    ),
    GoRoute(
      name: 'Diseases',
      path: '/Diseases',
      builder: (context, state) => DiseasePred(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Chronic Kidney Disease',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'ActX'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
