import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/routes/Routers.dart';
import 'package:final_project_news_app/widgets/SplashPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routers.getRoute,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          labelMedium: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          labelSmall: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          titleLarge: TextStyle(fontSize: 18, color: AppColors.grey),
          titleMedium: TextStyle(fontSize: 15, color: AppColors.grey),
          titleSmall: TextStyle(fontSize: 12, color: AppColors.grey),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            minimumSize: Size(MediaQuery.sizeOf(context).width - 40, 50),
            backgroundColor: AppColors.blue,
            side: const BorderSide(color: AppColors.greywhite, width: 0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 1,
          ),
        ),
      ),
      home: const Scaffold(
        body: SplashPage(),
      ),
    );
  }
}
