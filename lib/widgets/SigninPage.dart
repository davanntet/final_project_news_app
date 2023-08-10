import 'package:final_project_news_app/components/Form/FormInput.dart';
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          // focusColor: const Color(0xff4D6EFD),
          // splashColor: const Color(0xff4D6EFD),
          // hoverColor: const Color(0xff4D6EFD),
          highlightColor: const Color(0xff4D6EFD).withOpacity(0.1),
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
                onTap: (){
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
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Sign in")),
              SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account?",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
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
