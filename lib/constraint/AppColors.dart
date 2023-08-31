// ignore: file_names
import 'package:flutter/material.dart';

class AppColors {
  static const blue = Color(0xff4D6EFD);
  static const secondaryColor = Color(0xff4D6EFD);
  static const grey = Color(0xff7A7A7A);
  static const black = Color(0xff292929);
  static const greywhite = Color(0xffE8E8E8);
  static const supergrey = Color(0xff454545);
  static const greyscale = Color(0xffA6A6A6);
  static const white = Color(0xffFFFFFF);
  static const bluewhite = Color(0xffF5F7FB);
}

class ValidatePattern {
  static final RegExp emailValidation =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$');
}
