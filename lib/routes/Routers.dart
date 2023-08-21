import 'package:final_project_news_app/widgets/home/CommentHomePage.dart';
import 'package:final_project_news_app/widgets/home/DetialHomePage.dart';
import 'package:final_project_news_app/widgets/search/NewRecommandation.dart';
import 'package:flutter/material.dart';

import '../widgets/App/IndexApp.dart';
import '../widgets/App/SplashPage.dart';
import '../widgets/App/StarterPage.dart';
import '../widgets/Auth/CreatePasswordPage.dart';
import '../widgets/Auth/EmailVerifyPage.dart';
import '../widgets/Auth/ForgetPasswordPage.dart';
import '../widgets/Auth/NewPasswordPage.dart';
import '../widgets/Auth/SigninPage.dart';
import '../widgets/Auth/SignupPage.dart';
import '../widgets/follow/follower.dart';
import '../widgets/follow/following.dart';
import '../widgets/search/SearchMethod.dart';
import '../widgets/search/TredingTopic.dart';

class Routers {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/staterpage':
        return MaterialPageRoute(builder: (_) => const StarterPage());
      case '/signin':
        return MaterialPageRoute(builder: (_) => SigninPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUP());
      case '/createpassword':
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(builder: (_) => CreatePasswordPage(email: args['email'], username: args['username'],));
      case '/forgetpassword':
        return MaterialPageRoute(builder: (_) => ForgetPasswordPage());
      case '/emailverify':
        return MaterialPageRoute(builder: (_) => const EmailVerifyPage());
      case '/newpassword':
        return MaterialPageRoute(builder: (_) => NewPasswordPage());
      case '/indexapp':
        return MaterialPageRoute(builder: (_) => const IndexApp());
      case '/detailhome':
        return MaterialPageRoute(builder: (_) => const DetailHomePage());
      case '/comment':
        return MaterialPageRoute(builder: (_) => const CommentHomePage());
      case '/trendingtopic':
        return MaterialPageRoute(builder: (_) => const TredingTopic());
      case '/recommandation':
        return MaterialPageRoute(builder: (_) => const NewRecommandation());
      case '/follower':
        return MaterialPageRoute(builder: (_) => const Follower());
      case '/following':
        return MaterialPageRoute(builder: (_) => const Following());
      case '/searchmethod':
        return MaterialPageRoute(builder: (_) => const SearchMethod());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
