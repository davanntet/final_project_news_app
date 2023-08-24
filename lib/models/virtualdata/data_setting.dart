import 'package:flutter/material.dart';

// ignore: camel_case_types
class data_setting {
  static List<data_setting_form> datas = [
    data_setting_form(
        title: "Bookmarks",
        description: "Articles that you have saved can be read back here",
        icon: Icons.bookmark_border_rounded,
        navigate: '/bookmark'),
    data_setting_form(
        title: "Night Mode",
        description: "Activate night mode for comfortable reading at night",
        icon: Icons.nightlight_round_outlined,
        navigate: '/nightmode',isNavigate: false),
    data_setting_form(
        title: "Article Notifications",
        description: "Turn on notifications to get the latest news updates",
        icon: Icons.notifications_outlined,
        type: setting_type.switch_type,
        navigate: '/notification',isNavigate: false),
  ];
}

// ignore: camel_case_types
class data_setting_form {
  String title;
  String description;
  IconData icon;
  int type;
  String navigate;
  bool isNavigate;
  data_setting_form(
      {required this.title,
      required this.description,
      required this.icon,
      required this.navigate,
      this.isNavigate = true,
      this.type = 0});
}

class setting_type {
  static const int switch_type = 1;
  static const int normal_type = 0;
}
