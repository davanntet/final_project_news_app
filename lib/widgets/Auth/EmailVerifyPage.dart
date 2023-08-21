// ignore: file_names
import 'package:final_project_news_app/components/Form/ExpireTime.dart';
import 'package:final_project_news_app/components/Form/PinInput.dart';
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class EmailVerifyPage extends StatelessWidget {
  const EmailVerifyPage({super.key});

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
        child: Column(
          children: [
            //verify code from email
            const SizedBox(
              height: 10,
            ),
            Text(
              "Check your email",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "We’ve sent a code to\nyour email",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/mail.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //where to put the code
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //code  code from email
                  const Form(
                      child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PinInput(),
                      SizedBox(
                        width: 15,
                      ),
                      PinInput(),
                      SizedBox(
                        width: 15,
                      ),
                      PinInput(),
                      SizedBox(
                        width: 15,
                      ),
                      PinInput(),
                    ],
                  )),
                  //resend code
                  const SizedBox(
                    height: 20,
                  ),
                  const ExpireTime(),
                  //button to verify
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/newpassword');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff4D6EFD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //resend code
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/emailverify');
                    },
                    child: const Text(
                      "Resend Code",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4D6EFD),
                      ),
                    ),
                  ),
                  //expire time
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
