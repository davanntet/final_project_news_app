import 'package:final_project_news_app/models/virtualdata/data_category.dart';
import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:final_project_news_app/widgets/search/SearchMethod.dart';
import 'package:flutter/material.dart';

import '../../components/home/card.dart';
import '../../constraint/AppColors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.greywhite.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/searchmethod');
                  SearchFunc(context);
                },
                radius: 70,
                highlightColor: AppColors.white,
                child: ListTile(
                  leading: const Icon(
                    Icons.search,
                    size: 35,
                    color: AppColors.grey,
                  ),
                  title: Text(
                    "Search News",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Tags",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 0,
                  children: [
                    ...List.generate(data_category.datas.length, (index) {
                      return Chip(
                        label: Text(
                          data_category.datas[index],
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        backgroundColor: AppColors.white,
                      );
                    })
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Treding Topic",
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/trendingtopic');
                      },
                      splashColor: AppColors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(100),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 25,
                        ),
                      ))
                ],
              ),
            ),
            //show profile and name such as KDrama,Bitcoin,Movie,Game,Trailer
            SizedBox(
              height: 80,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  reverse: true,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data_info.data_info_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage(data_user.datas[index].image),
                          ),
                          Text(
                            data_user.datas[index].name,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News Recommendations",
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/recommandation');
                      },
                      splashColor: AppColors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(100),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 25,
                        ),
                      ))
                ],
              ),
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


void SearchFunc(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const SearchMethod();
    },
  );
}
