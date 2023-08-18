// ignore: file_names
import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class ExpireTime extends StatefulWidget {
  const ExpireTime({super.key});

  @override
  State<ExpireTime> createState() => _ExpireTimeState();
}

class _ExpireTimeState extends State<ExpireTime> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Code will expire in",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(
          width: 5,
        ),
        TweenAnimationBuilder(
            tween: Tween(begin: 60.0, end: 0.0),
            duration: const Duration(seconds: 60),
            builder: (context, value, child) =>
                Text("00:" + value.toStringAsFixed(00),
                    style: const TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.bold,
                    )),
            onEnd: () {
              setState(() {});
            }),
      ],
    );
  }
}
