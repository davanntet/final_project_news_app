// ignore: file_names
import 'package:final_project_news_app/components/Form/FormInput.dart';
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final AuthProvider _authProvider;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      _authProvider = context.read<AuthProvider>();
      _authProvider.addListener(() {
        loginStatus();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    _authProvider.dispose();
    super.dispose();
  }

  void loginStatus() {
    if (_authProvider.loginStatus == 2) {
      Navigator.pushNamed(context, '/indexapp');
    } else if (_authProvider.loginStatus == 0) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Error"),
                content: const Text("Email or password is incorrect"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("OK"))
                ],
              ));
    } else {
      showDialog(
          context: context,
          builder: (context) =>
              const Center(child: CircularProgressIndicator.adaptive()));
    }
  }

  Future<void> login() async {
    if (mounted) {
      try {
              await _authProvider.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      } catch (e) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Error"),
                content: const Text("Something Went Wrong"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("OK"))
                ],
              );
            });
      }

    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Error"),
              content: const Text("Something Went Wrong"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"))
              ],
            );
          });
    }

    // navigateTo();
  }

  void navigateTo() {
    Navigator.pushNamed(context, '/indexapp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: AppColors.blue.withOpacity(0.1),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome Back",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Sign in to continue",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    FormInput(
                      prefixIcon: Icons.email_outlined,
                      labelText: "Email",
                      hintText: "Enter your email",
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormInput(
                      prefixIcon: Icons.security_outlined,
                      labelText: "Email",
                      hintText: "Enter your password",
                      obscureText: true,
                      controller: _passwordController,
                    ),
                  ],
                ),
              )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/forgetpassword');
                  },
                  child: const Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blue,
                        decorationThickness: 2),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    login();
                    // Navigator.pushNamed(context, '/indexapp');
                  },
                  child: const Text("Sign in")),
              const SizedBox(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                          color: AppColors.greyscale,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or",
                            style: TextStyle(color: AppColors.greyscale),
                          ),
                        ),
                        Expanded(child: Divider(color: AppColors.greyscale)),
                      ],
                    ),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/images/google.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Googles",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.facebook_outlined,
                        color: Colors.blue,
                        size: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Continue with Google",
                          style: TextStyle(color: Colors.black))
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account?",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        "Sign UP",
                        style: TextStyle(
                            color: AppColors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.blue,
                            decorationThickness: 2),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
