
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
          displayLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          displayMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          titleLarge: TextStyle(fontSize: 18, color: AppColors.grey),
          titleMedium: TextStyle(fontSize: 15, color: AppColors.grey),
          titleSmall: TextStyle(fontSize: 12, color: AppColors.grey),
          headlineMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.blue,
          ),
          headlineSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.blue,
          ),
          headlineLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.blue,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.blue.withOpacity(0.1),
            minimumSize: Size(80,32),
            maximumSize: Size(110,35),
            textStyle: TextStyle(fontSize: 12, color: AppColors.grey,fontWeight: FontWeight.w500),
          ),
        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.blue,
          selectedItemColor: AppColors.blue,
          elevation: 0,
          unselectedItemColor: AppColors.greyscale,
          selectedLabelStyle: const TextStyle(fontSize: 14),
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: AppColors.white,
          padding: const EdgeInsets.all(0),
          elevation: 0,
          height: 80,
          shadowColor: AppColors.blue,
          surfaceTintColor: AppColors.blue,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: AppColors.white),
          titleTextStyle:const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
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
