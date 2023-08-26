
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
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
          itemCount: data_user.datas.length,
          reverse: true,
          itemBuilder: (context, index) {
            final user = data_user.datas[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(user.image),
              ),
              title:  Text(user.name),
              subtitle:  Text(user.bio),
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
