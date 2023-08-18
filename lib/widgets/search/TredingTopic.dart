import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class TredingTopic extends StatelessWidget {
  const TredingTopic({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trending Topic"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: const Color(0xff4D6EFD).withOpacity(0.1),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              title: Text(
                "Davann CR",
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
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile.png'),
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
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile.png'),
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
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile.png'),
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
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
