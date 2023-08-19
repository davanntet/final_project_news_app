// ignore: file_names

import 'package:final_project_news_app/components/Form/FormInput.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage(
      {super.key, required this.username, required this.email});
  final String username;
  final String email;
  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final _passwordController = TextEditingController();

  final _confirmController = TextEditingController();

  void register() {
    // print(widget.email);
    // print(widget.username);
    context.read<AuthProvider>().signUpWithEmailAndPassword(
      
        email: widget.email,
        password: _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: const Color(0xff4D6EFD).withOpacity(0.1),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
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
              "Create Password",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Create a password to enter\nthe application",
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
                    controller: _passwordController,
                    prefixIcon: Icons.security_outlined,
                    labelText: "Password",
                    hintText: "Enter your password",
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormInput(
                    controller: _confirmController,
                    prefixIcon: Icons.verified_user_outlined,
                    labelText: "Confirm Password",
                    hintText: "Enter your password",
                    obscureText: true,
                  ),
                ],
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/signin');
                  register();
                },
                child: const Text("Save")),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
