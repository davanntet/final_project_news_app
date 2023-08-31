import 'package:final_project_news_app/components/profile/setting.dart';
import 'package:final_project_news_app/models/virtualdata/data_setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void logout() {
    context.read<AuthProvider>().FirebaseLogout();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
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
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Davann Tet",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Nothing to Say!💕",
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
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/follower');
                          },
                          icon: Text(
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
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/following');
                          },
                          icon: Text(
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
            itemBuilder: (BuildContext context, int index) => ProfileSetting(
              data: data_setting.datas[index],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                confirm(context,logout);
                // Navigator.pushNamed(context, '/staterpage');
              },
              child: const Text("Logout"))
        ],
      ),
    ));
  }
}

void confirm(BuildContext context,callback){
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirm Logout"),
          content: const Text("Are you sure you want to logout?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel")),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/staterpage');
                },
                child: const Text("Logout"))
          ],
        );
      }
      );
}
