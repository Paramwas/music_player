import 'package:flutter/material.dart';
import 'package:produv/pages/display.dart';
import 'package:produv/provider/final.dart';
import 'package:produv/pages/fell.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:produv/provider/side.dart';
import 'package:produv/pages/chill.dart';
import 'package:produv/prove/futures.dart';

final bckColor = const Color.fromRGBO(255, 255, 255, 0.141);
Widget Bonsong(dynamic feel) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          foregroundColor: bckColor,
          backgroundColor: const Color.fromARGB(6, 255, 255, 255),
          maximumSize: Size(70, 70),
          shape: RoundedRectangleBorder()),
      child: Row(
        children: [
          Image.network(
            'http://127.0.0.1:5000/data/${feel.image}',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                feel.name,
                style: TextStyle(
                    color: const Color.fromARGB(255, 247, 241, 241),
                    fontSize: 16,
                    letterSpacing: 1.5),
              ),
              Text(
                feel.number,
                style: TextStyle(
                    color: Colors.white, fontSize: 12, letterSpacing: 1.5),
              )
            ],
          )
        ],
      ));
}
