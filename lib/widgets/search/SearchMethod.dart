import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_search.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../components/home/card.dart';
import '../../constraint/AppColors.dart';

class SearchMethod extends StatelessWidget {
  const SearchMethod({super.key});

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
        title: TextFormField(
          decoration: InputDecoration(
            hintText: "Search News",
            hintStyle: Theme.of(context).textTheme.titleLarge,
            prefixIcon: const Icon(
              Icons.search,
              size: 35,
              color: AppColors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.greywhite.withOpacity(0.5),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Searches",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  IconButton(
                    onPressed: () {},
                    highlightColor: AppColors.grey.withOpacity(0.1),
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            ...List.generate(3, (index) {
              return InkWell(
                onTap: () => {},
                child: ListTile(
                  // horizontalTitleGap: 0,
                  // minVerticalPadding: 0,
                  // minLeadingWidth: 0,
                  contentPadding: const EdgeInsets.only(left: 30, right: 10),
                  dense: true,
                  title: Text(
                    data_search.datas[index],
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  trailing: IconButton(
                    onPressed: () {  },
                    
                    icon: const Icon(
                      Icons.close,
                      size: 25,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              );
            }),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reading History",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    IconButton(
                      onPressed: () {},
                      highlightColor: AppColors.grey.withOpacity(0.1),
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              reverse: true,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: data_info.data_info_list.length,
              itemBuilder: (BuildContext context, int index)=>HomeCard(datas: data_info.data_info_list[index], users: data_user.datas[index],),
            )
          ],

        ),
      ),
    );
  }
}
