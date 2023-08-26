import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

class Followe extends StatelessWidget {
  const Followe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: data_user.datas.length,
        itemBuilder: (context, index) {
          final user = data_user.datas[index];
          return ListTile(
            leading:  CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(user.image),
            ),
            title:  Text(user.name),
            subtitle:  Text(user.bio),
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