// ignore: file_names

import 'package:flutter/material.dart';

import '../../components/Form/FormInput.dart';
import '../../constraint/AppColors.dart';

class SignUP extends StatelessWidget {
  SignUP({super.key});
  final _emailController = TextEditingController();
  final _fullname = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                "Create account",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Create your account and fill in the\nform below to get started",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
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
                      controller: _fullname,
                      prefixIcon: Icons.person_outline,
                      labelText: "Full name",
                      hintText: "Enter your full name",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FormInput(
                      prefixIcon: Icons.email_outlined,
                      labelText: "Email",
                      hintText: "Enter your email",
                      controller: _emailController,
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/createpassword',arguments: {
                      'email':_emailController.text,
                      'username':_fullname.text
                    });
                  },
                  child: const Text("Sign UP")),
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
                            "Login with",
                            style: TextStyle(color: AppColors.greyscale),
                          ),
                        ),
                        Expanded(child: Divider(color: AppColors.greyscale)),
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize:
                          Size(MediaQuery.sizeOf(context).width / 2 - 30, 50),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage('assets/images/google.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Googles",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize:
                            Size(MediaQuery.sizeOf(context).width / 2 - 30, 50),
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
                          Text("Facebook",
                              style: TextStyle(color: Colors.black))
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {

                        Navigator.pushNamed(context, '/signin');
                      },
                      child: const Text(
                        "Sign in",
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
