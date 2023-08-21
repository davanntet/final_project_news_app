import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

class Follower extends StatelessWidget {
  const Follower({super.key});

  @override
  Widget build(BuildContext context) {
    final wasPushed =
    ModalRoute.of(context)?.didPush().toString().toLowerCase();
    final bool can = wasPushed!.contains('complete');
    if (can) {
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
                  child: const Text('Block'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red[50],
                  )),
            );
          },
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
        scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: AppColors.blue.withOpacity(0.1),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppColors.black,
          ),
        ),
      ),
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
                  child: const Text('Block'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red[50],
                  )),
            );
          },
        ),
      );
    }
  }
}
