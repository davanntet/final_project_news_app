// ignore: file_names
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../components/home/card.dart';
import '../../components/home/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hi Davann,",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Discover Treding\nNews",
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //slide
                    SizedBox(
                      height:300,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: data_info.data_info_list.length,
                        itemBuilder: (BuildContext context, int index)=>HomeSlider(datas: data_info.data_info_list[index],),
                      ),
                    )
                  ],
                )
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For You",
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                      onTap: () {},
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
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              width: double.infinity,
              height: 0.75,
              color: AppColors.greyscale,
            ),
            const SizedBox(
              height: 10,
            ),
            //card
            ListView.builder(

              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
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
