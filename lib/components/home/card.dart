import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:final_project_news_app/models/virtualdata/data_user.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.datas, required this.users});
  final data_info_form datas;
  final user_data_form users;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.30,
            height: MediaQuery.sizeOf(context).width * 0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(datas.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.70 - 50,
            height: MediaQuery.sizeOf(context).width * 0.30,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      datas.title,
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.start,
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "By ${users.name}",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.start,
                      softWrap: true,
                    ),
                  ],
                ),
                //row hava such as icon favorite, comment, ago
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite_border_outlined,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${datas.favorite}",
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.comment_outlined,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${datas.comment}",
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      datas.time,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
