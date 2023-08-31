// ignore: file_names
import 'package:flutter/material.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: heights * 0.33333,
            ),
            SizedBox(
              height: heights * 0.33333,
              child: Center(
                  child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enjoy the experience\n of reading the latest news from\n around the world",
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
            ),
            SizedBox(
                height: heights * 0.33333,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        "Create an account",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                      ),
                      child: const Text(
                        "Already have an account",style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
