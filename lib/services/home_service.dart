import 'package:flutter/services.dart';
import 'dart:convert' as convert;

import '../models/home/home_overview.dart';

class HomeService {
  Future<HomeOverviewResModel> getHomeOverview() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      // get json data from json file in assets/json
      final json = await rootBundle.loadString(
        'assets/json/home_overview.json',
      );
      // decode json data to dart object
      final data = convert.jsonDecode(json);

      return HomeOverviewResModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
