import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../components/home/card.dart';
import '../../constraint/AppColors.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

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
            Icons.arrow_back,
            size: 30,
            color: AppColors.black,
          ),

        ),
        title: Text("Bookmark", style: Theme.of(context).textTheme.labelSmall,),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                physics: const NeverScrollableScrollPhysics(),
                reverse: true,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: data_info.data_info_list.length,
                itemBuilder: (BuildContext context, int index)=>HomeCard(datas: data_info.data_info_list[index], users: data_user.datas[index],),
              ),
      )
    );
  }
}