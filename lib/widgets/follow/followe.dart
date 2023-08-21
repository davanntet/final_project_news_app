import 'package:flutter/material.dart';

class Followe extends StatelessWidget {
  const Followe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            title: const Text('User Name'),
            subtitle: const Text('User Bio'),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('Follow'),
            ),
          );
        },
      ),

    );
  }
}