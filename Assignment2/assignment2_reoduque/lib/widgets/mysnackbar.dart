// ignore_for_file: avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:assignment2_reoduque/main.dart';

class MySnackBar extends SnackBar {
  String text;
  MySnackBar({required this.text})
      : super(
          duration: const Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              const Icon(Icons.hourglass_bottom),
              const SizedBox(width: 10),
              Text(text),
            ],
          ),
        );

  void show() {
    //print(scaffoldMessengerKey.currentState);
    scaffoldMessengerKey.currentState?.showSnackBar(get());
  }

  SnackBar get() {
    return SnackBar(
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
      content: Row(
        children: [
          const Icon(Icons.hourglass_bottom),
          const SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
