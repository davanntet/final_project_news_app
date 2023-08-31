import 'package:flutter/material.dart';

void ShowMessage(BuildContext context, title, description) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(description),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"))
            ],
          ));
}
