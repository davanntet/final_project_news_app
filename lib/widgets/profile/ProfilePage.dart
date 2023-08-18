import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

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
                        Text(
                          "0",
                          style: Theme.of(context).textTheme.labelSmall,
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
                        Text(
                          "0",
                          style: Theme.of(context).textTheme.labelSmall,
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
          Column(
            children: [
              InkWell(
                onTap: () {},
                highlightColor: AppColors.blue.withOpacity(0.1),
                hoverColor: AppColors.blue.withOpacity(0.5),
                splashColor: AppColors.blue.withOpacity(0.15),
                child: ListTile(
                  leading: const Column(
                    children: [
                      Icon(
                        Icons.bookmark_border_rounded,
                        size: 30,
                      )
                    ],
                  ),
                  title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Bookmarks",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Text(
                          "Articles that you have saved can be read back here",
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ]),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
