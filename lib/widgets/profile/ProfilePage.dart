import 'package:final_project_news_app/components/profile/setting.dart';
import 'package:final_project_news_app/models/virtualdata/data_setting.dart';
import 'package:final_project_news_app/widgets/follow/follower.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Profile",
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.start,
            ),
          ),

          //user profile that contains background image, avatar,name,bio,follower,following
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "User Name",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "User Bio",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
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
                          "Followers",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 50,
                      child: const VerticalDivider(
                        width: 1,
                        thickness: 1,
                      ),
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
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: data_setting.datas.length,
            itemBuilder: (BuildContext context, int index) =>
                ProfileSetting(data: data_setting.datas[index]),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/staterpage');
              },
              child: const Text("Logout"))
        ],
      ),
    ));
  }
}
