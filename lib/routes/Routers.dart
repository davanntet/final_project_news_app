

import 'package:final_project_news_app/widgets/CreatePasswordPage.dart';
import 'package:final_project_news_app/widgets/EmailVerifyPage.dart';
import 'package:final_project_news_app/widgets/ForgetPasswordPage.dart';
import 'package:final_project_news_app/widgets/IndexApp.dart';
import 'package:final_project_news_app/widgets/NewPasswordPage.dart';
import 'package:final_project_news_app/widgets/SigninPage.dart';
import 'package:final_project_news_app/widgets/SignupPage.dart';
import 'package:final_project_news_app/widgets/SplashPage.dart';
import 'package:final_project_news_app/widgets/StarterPage.dart';
import 'package:final_project_news_app/widgets/home/CommentHomePage.dart';
import 'package:final_project_news_app/widgets/home/DetialHomePage.dart';
import 'package:final_project_news_app/widgets/home/HomePage.dart';
import 'package:final_project_news_app/widgets/search/NewRecommandation.dart';
import 'package:flutter/material.dart';

import '../widgets/search/TredingTopic.dart';

class Routers{
 static Route<dynamic> getRoute (RouteSettings settings){
    switch(settings.name){
      case '/staterpage':
        return MaterialPageRoute(builder:(_)=> StarterPage());
      case '/signin':
        return MaterialPageRoute(builder:(_)=> SigninPage());
      case '/signup':
        return MaterialPageRoute(builder:(_)=> SignUP());
      case '/createpassword':
        return MaterialPageRoute(builder:(_)=> CreatePasswordPage());
      case '/forgetpassword':
        return MaterialPageRoute(builder:(_)=> ForgetPasswordPage());
      case '/emailverify':
        return MaterialPageRoute(builder:(_)=>  EmailVerifyPage());
       case '/newpassword':
        return MaterialPageRoute(builder:(_)=>  NewPasswordPage());
      case '/indexapp':
        return MaterialPageRoute(builder: (_)=> IndexApp());
      case '/detailhome':
        return MaterialPageRoute(builder: (_)=> DetailHomePage());
      case '/comment':
        return MaterialPageRoute(builder: (_)=> CommentHomePage());
      case '/trendingtopic':
        return MaterialPageRoute(builder: (_)=> TredingTopic());
      case '/recommandation':
        return MaterialPageRoute(builder: (_)=> NewRecommandation());
      default:
        return MaterialPageRoute(builder:(_)=> SplashPage());
    }
  }
}