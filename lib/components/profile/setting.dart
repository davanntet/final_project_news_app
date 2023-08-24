import 'package:final_project_news_app/models/virtualdata/data_setting.dart';
import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting(
      {super.key,
      required this.data,});
  final data_setting_form data;
  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    final _data = widget.data;
    if (_data.type == 0) {
      return InkWell(
        onTap: () {
          if (widget.data.isNavigate) {
            Navigator.pushNamed(context, widget.data.navigate);
          }
        },
        highlightColor: AppColors.blue.withOpacity(0.1),
        hoverColor: AppColors.blue.withOpacity(0.5),
        splashColor: AppColors.blue.withOpacity(0.15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListTile(
            leading: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Icon(
                    _data.icon,
                    size: 30,
                  )
                ],
              ),
            ),
            title:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  _data.title,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  _data.description,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.start,
                ),
              )
            ]),
          ),
        ),
      );
    } else {
      return InkWell(
        onTap: () {
          setState(() {
            isSwitch = !isSwitch;
          });
        },
        highlightColor: AppColors.blue.withOpacity(0.1),
        hoverColor: AppColors.blue.withOpacity(0.5),
        splashColor: AppColors.blue.withOpacity(0.15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListTile(
            leading: Column(
              children: [
                Icon(
                  _data.icon,
                  size: 30,
                )
              ],
            ),
            title:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  _data.title,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  _data.description,
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.start,
                ),
              )
            ]),
            trailing: Switch.adaptive(
              value: isSwitch,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              splashRadius: 0,
              onChanged: (value) {
                setState(() {
                  isSwitch = !isSwitch;
                });
              },
              trackColor: MaterialStateProperty.all(
                  isSwitch ? AppColors.blue : AppColors.greywhite),
            ),
          ),
        ),
      );
    }
  }
}
