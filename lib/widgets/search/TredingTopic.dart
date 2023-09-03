import 'package:final_project_news_app/components/simple/simple_appbar.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';
import '../../components/search/trending.dart';

class TredingTopic extends StatelessWidget {
   const TredingTopic({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(context,'Trending Topic',),
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
