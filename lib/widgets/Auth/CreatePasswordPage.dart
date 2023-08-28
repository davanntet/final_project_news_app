// ignore: file_names

import 'package:final_project_news_app/components/Form/FormInput.dart';
import 'package:final_project_news_app/constraint/AppColors.dart';
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
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmController;
  late final AuthProvider _authProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _authProvider = context.read<AuthProvider>();
      _authProvider.addListener(registerStatus);
    });
  }

  void registerStatus() {
    if (_authProvider.registerStatus == 2) {
      Navigator.pushNamed(context, '/indexapp');
    } else if (_authProvider.registerStatus == 0) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text("Error"),
                content: const Text("Email has been used."),
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

  @override
  Widget build(BuildContext context) {
    void register() {
      context.read<AuthProvider>().signUpWithEmailAndPassword(
          username: widget.username,
          email: widget.email,
          password: _passwordController.text);
    }
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
