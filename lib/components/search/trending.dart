import 'dart:math';

import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

class Trending extends StatelessWidget {
  const Trending({super.key, required this.user});
  final user_data_form user;
  @override
  Widget build(BuildContext context) {
    final random = Random();
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/visitprofile');
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(user.image),
        ),
        title: Text(
          user.name,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                //profile
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColors.white,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/person/img_${random.nextInt(18)}.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColors.white,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/person/img_${random.nextInt(18)}.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColors.white,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/person/img_${random.nextInt(18)}.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "+2.5k",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Read this topic",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
