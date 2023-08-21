import 'package:flutter/material.dart';

// ignore: camel_case_types
class data_setting {
  static List<data_setting_form> datas = [
    data_setting_form(
        title: "Bookmarks",
        description: "Articles that you have saved can be read back here",
        icon: Icons.bookmark_border_rounded),
    data_setting_form(
        title: "Night Mode",
        description: "Activate night mode for comfortable reading at night",
        icon: Icons.nightlight_round_outlined),
    data_setting_form(
        title: "Article Notifications",
        description: "Turn on notifications to get the latest news updates",
        icon: Icons.notifications_outlined
        ,type: setting_type.switch_type
        ),
  ];
}

// ignore: camel_case_types
class data_setting_form {
  String title;
  String description;
  IconData icon;
  int type;
  data_setting_form(
      {required this.title, required this.description, required this.icon,this.type = 0});
}

class setting_type{
  static const int switch_type = 1;
  static const int normal_type = 0;
}