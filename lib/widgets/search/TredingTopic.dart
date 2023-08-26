import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../components/search/trending.dart';

class TredingTopic extends StatelessWidget {
  const TredingTopic({super.key});
  @override
  Widget build(BuildContext context) {
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
        title: const Text("Trending Topic"),
      ),
      body: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              reverse: true,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: data_user.datas.length,
              itemBuilder: (BuildContext context, int index)=>Trending(user: data_user.datas[index]),
            )
    );
  }
}
