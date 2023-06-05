import 'package:dream_house/NavigationRoute.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NavigationRoute()),
      );
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png',height: 250,)
      ),
    );
  }
}

