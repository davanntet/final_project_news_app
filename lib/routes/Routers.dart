

import 'package:final_project_news_app/widgets/SplashPage.dart';
import 'package:final_project_news_app/widgets/StarterPage.dart';
import 'package:flutter/material.dart';

class Routers{
 static Route<dynamic> getRoute (RouteSettings settings){
    switch(settings.name){
      case '/staterpage':
        return MaterialPageRoute(builder:(_)=> StarterPage());
      default:
        return MaterialPageRoute(builder:(_)=>const SplashPage());
    }
  }
}