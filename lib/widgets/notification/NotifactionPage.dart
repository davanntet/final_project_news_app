import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/models/virtualdata/data_notification.dart';
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
              itemBuilder: (context, index) {
                final data = data_notification.datas[index];
                return InkWell(
                  onTap: () => {},
                  highlightColor: AppColors.blue.withOpacity(0.1),
                  hoverColor: AppColors.blue.withOpacity(0.5),
                  splashColor: AppColors.blue.withOpacity(0.15),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(data.image),
                    ),
                    title: Text(
                      data.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.description,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          data.time,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                    height: 0.5,
                    thickness: 0.5,
                  ),
              itemCount: data_notification.datas.length),
        ),
      ],
    ));
  }
}
