import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../components/home/card.dart';
import '../../components/home/slider.dart';
import '../../constraint/AppColors.dart';

class VisitProfile extends StatelessWidget {
  const VisitProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration:
                            const BoxDecoration(color: AppColors.bluewhite),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/background.png",
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 6,
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 3.3),
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width / 6,
                        backgroundImage: const AssetImage(
                          "assets/images/profile.png",
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Davann Tet",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.verified,
                      color: AppColors.blue,
                      size: 25,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width / 5),
                  child: Text(
                    "I am a writer who is always inspired by coffee",
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/follower');
                          },
                          child: Text(
                            "0",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Articles",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: 25,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/follower');
                          },
                          child: Text(
                            "0",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Followers",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: 25,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/following');
                          },
                          child: Text(
                            "0",
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Following",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                ///////////////////////////
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 0),
                          width: double.infinity,
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular from Davann",
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
                        //slide
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: data_info.data_info_list.length,
                            itemBuilder: (BuildContext context, int index) =>
                                HomeSlider(
                              datas: data_info.data_info_list[index],
                            ),
                          ),
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: Text(
                        "Recent News",
                        style: Theme.of(context).textTheme.labelSmall,
                        textAlign: TextAlign.start,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //card
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  reverse: true,
                  padding: EdgeInsets.zero,
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
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.only(left: 5, top: 5),
            alignment: Alignment.bottomLeft,
            height: 60,
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              highlightColor: AppColors.blue.withOpacity(0.1),
              icon: const Icon(
                Icons.arrow_back,
                size: 25,
                color: AppColors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
