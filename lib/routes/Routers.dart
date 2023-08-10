

import 'package:final_project_news_app/widgets/CreatePasswordPage.dart';
import 'package:final_project_news_app/widgets/EmailVerifyPage.dart';
import 'package:final_project_news_app/widgets/ForgetPasswordPage.dart';
import 'package:final_project_news_app/widgets/NewPasswordPage.dart';
import 'package:final_project_news_app/widgets/SigninPage.dart';
import 'package:final_project_news_app/widgets/SignupPage.dart';
import 'package:final_project_news_app/widgets/SplashPage.dart';
import 'package:final_project_news_app/widgets/StarterPage.dart';
import 'package:flutter/material.dart';

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
      default:
        return MaterialPageRoute(builder:(_)=> SplashPage());
    }
  }
}