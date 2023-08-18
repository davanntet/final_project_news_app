import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
          alignment: Alignment.centerLeft,
          child: Text(
            "Notification",
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () => {},
                    highlightColor: AppColors.blue.withOpacity(0.1),
                    hoverColor: AppColors.blue.withOpacity(0.5),
                    splashColor: AppColors.blue.withOpacity(0.15),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                      title: Text(
                        "News Title",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "News Description",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "7 min ago",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const Divider(
                    height: 0.5,
                    thickness: 0.5,
                  ),
              itemCount: 10),
        ),
      ],
    ));
  }
}
