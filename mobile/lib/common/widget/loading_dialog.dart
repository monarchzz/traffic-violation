import 'package:flutter/material.dart';

void loadingDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) {
      return Dialog(
        // The background color
        elevation: 0,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              // The loading indicator
              CircularProgressIndicator(),
              SizedBox(
                height: 15,
              ),
              // Some text
              Text('Loading...')
            ],
          ),
        ),
      );
    },
  );
}
