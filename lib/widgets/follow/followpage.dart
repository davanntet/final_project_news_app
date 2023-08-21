import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/widgets/follow/followe.dart';
import 'package:final_project_news_app/widgets/follow/follower.dart';
import 'package:final_project_news_app/widgets/follow/following.dart';
import 'package:flutter/material.dart';

class FollowPage extends StatelessWidget {
  const FollowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
        children: [
          Container(
            color: AppColors.white,
            padding: const EdgeInsets.only(top: 35),
            child:  TabBar(
              tabs:const [
                Tab(
                  text: "FOLLOWE",
                ),
                Tab(text: "FOLLWER"),
                Tab(text: "FOLLWING"),
              ],
              labelColor: AppColors.blue,
              indicatorColor:AppColors.blue,
              unselectedLabelColor: AppColors.greyscale,
              labelStyle:Theme.of(context).textTheme.displayMedium,
              
            ),
          ),
          const Flexible(
            child: TabBarView(
    
              children: [
                Followe(),
                Follower(),
                Following()
              ],
            ),
          ),
    
        ],
      ),
      )
    );
  }
}