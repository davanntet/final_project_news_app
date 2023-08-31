// ignore: file_names
import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../components/home/card.dart';
import '../../components/simple/simple_appbar.dart';

class NewRecommandation extends StatelessWidget {
  const NewRecommandation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(context,"New Recommandation"),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
             ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              physics: const NeverScrollableScrollPhysics(),
              reverse: true,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: data_info.data_info_list.length,
              itemBuilder: (BuildContext context, int index) => HomeCard(
                datas: data_info.data_info_list[index],
                users: data_user.datas[index],
              ),
            )

          ],
        ),
      ),
    );
  }
}
