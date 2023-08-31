import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

AppBar SimpleAppBar(BuildContext context, String? title) {
  return AppBar(
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
        Icons.arrow_back,
        size: 25,
        color: AppColors.black,
      ),
    ),
    title: Text(title ?? ''),
  );
}
