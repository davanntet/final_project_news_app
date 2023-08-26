import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:final_project_news_app/routes/Routers.dart';
import 'package:final_project_news_app/widgets/App/SplashPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/auth_provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child:const MainApp(),
      ) 
  );
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
            minimumSize: const Size(80, 32),
            maximumSize: const Size(110, 35),
            textStyle: const TextStyle(
                fontSize: 12,
                color: AppColors.grey,
                fontWeight: FontWeight.w500),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.blue,
          selectedItemColor: AppColors.blue,
          elevation: 0,
          unselectedItemColor: AppColors.greyscale,
          selectedLabelStyle: TextStyle(fontSize: 14),
          unselectedLabelStyle: TextStyle(fontSize: 14),
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: AppColors.white,
          padding: EdgeInsets.all(0),
          elevation: 0,
          height: 80,
          shadowColor: AppColors.blue,
          surfaceTintColor: AppColors.blue,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.white),
          titleTextStyle: TextStyle(
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
        iconButtonTheme:  IconButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            // minimumSize: MaterialStateProperty.all(Size.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            elevation: MaterialStateProperty.all(0),
            overlayColor: MaterialStateProperty.all(AppColors.blue.withOpacity(0.1)),


        ),
      ),
      ),
      home: const Scaffold(
        body: SplashPage(),
      ),
    );
  }
}
