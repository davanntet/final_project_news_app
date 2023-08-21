import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

class SearchMethod extends StatelessWidget {
  const SearchMethod({super.key});

  @override
  Widget build(BuildContext context) {
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
            Icons.arrow_back,
            size: 30,
            color: AppColors.black,
          ),
        ),
        title:TextFormField(
              decoration: InputDecoration(
                hintText: "Search News",
                hintStyle: Theme.of(context).textTheme.titleLarge,
                prefixIcon: const Icon(
                  Icons.search,
                  size: 35,
                  color: AppColors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColors.greywhite.withOpacity(0.5),
              ),
            ),
      ),
      body: const SizedBox(
        height:250,
        child: SingleChildScrollView(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}