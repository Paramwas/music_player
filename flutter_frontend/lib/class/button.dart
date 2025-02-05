import 'dart:math';

import 'package:flutter/material.dart';

class TopButton {
  final String name;

  TopButton({required this.name});
}

final bckColor = const Color.fromARGB(36, 255, 255, 255);
Widget button(String name) {
  return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(foregroundColor: bckColor),
      child: Text(
        name,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 1,
            fontWeight: FontWeight.w400),
      ));
}
