// ignore: file_names
import 'package:flutter/material.dart';

import '../../components/Form/FormInput.dart';

class NewPasswordPage extends StatelessWidget {
  NewPasswordPage({super.key});
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Text(
                "New Password",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Reset your password to recovery\n& login to your account.",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                Navigator.pushReplacementNamed(context, '/signin');
              }, child: const Text("Save")),
            ],
          ),
        ),
      ),
    );
  }
}
