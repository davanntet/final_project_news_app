//starter page
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/staterpage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircleAvatar(
        radius: 75,
        backgroundImage: AssetImage('assets/images/logo.png'),
      )),
    );
  }
}
