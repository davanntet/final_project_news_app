//starter page
import 'package:final_project_news_app/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final AuthProvider _authProvider;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Future.delayed(const Duration(milliseconds: 75), () {
          _authProvider = context.read<AuthProvider>();
          _authProvider.addListener(checkLogin);
          _authProvider.initialize();
        });
      }
    });

    // WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp){
    //   _authProvider = context.read<AuthProvider>();
    //  _authProvider.addListener(() {
    //     checkLogin();
    //   });
    //   _authProvider.initialize();
    // });
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, "/staterpage");
    // });
    // Future.microtask(() => {
    //       context.read<AuthProvider>().addListener(() {
    //         checkLogin();
    //       }),
    //       context.read<AuthProvider>().initialize()
    // });
  }

  void checkLogin() {
    if (_authProvider.initStatus == 2) {
      Navigator.pushReplacementNamed(context, "/indexapp");
    } else if (_authProvider.initStatus == 0) {
      Navigator.pushReplacementNamed(context, "/staterpage");
    }
  }

  @override
  void dispose() {
    _authProvider.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: CircleAvatar(
        radius: 75,
        backgroundImage: AssetImage('assets/images/logo.png'),
      )),
    );
  }
}
