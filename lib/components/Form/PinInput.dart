import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinInput extends StatefulWidget {
  const PinInput({super.key});

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        controller: _controller,
        onChanged: (value) {
          if (value == "") {
            FocusScope.of(context).previousFocus();
          } else {
            _controller.text = value[value.length - 1];
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.greyscale,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.greyscale,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.blue,
              width: 1,
            ),
          ),
          hintText: "-",
          hintStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: AppColors.black),
        ),
        inputFormatters: [
          // LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true),
        ],
      ),
    );
  }
}
