import 'package:final_project_news_app/models/virtualdata/data_info.dart';
import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key, required this.datas});
  final data_info_form datas;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.blue.withOpacity(0.05),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detailhome');
            },
            child: Container(
              height: MediaQuery.sizeOf(context).width * 0.7 * 0.63,
              width: MediaQuery.sizeOf(context).width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(datas.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Text(
              datas.title,
              style: Theme.of(context).textTheme.labelSmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    datas.category,
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(
                datas.time,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 2,
                    backgroundColor: AppColors.grey,
                  ),
                  Text(
                    datas.time_read,
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
