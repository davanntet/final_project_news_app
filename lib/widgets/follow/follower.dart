
import 'package:final_project_news_app/components/simple/simple_appbar.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';


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
          padding: EdgeInsets.zero,
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
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red[50],
                  ),
                  child: const Text('Block')),
            );
          },
        ),
      );
    } else {
      
      return Scaffold(
        appBar: SimpleAppBar(context, "Follower(60)"),
        body: ListView.builder(
          padding: EdgeInsets.zero,
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
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red[50],
                  ),
                  child: const Text('Block')),
            );
          },
        ),
      );
    }
  }
}
