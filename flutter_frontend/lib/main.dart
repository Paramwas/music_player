import 'package:flutter/material.dart';
import 'package:produv/pages/artist.dart';
import 'package:produv/pages/display.dart';
import 'package:produv/pages/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:produv/pages/test.dart';
import 'package:produv/sigin./classSignin.dart';
import 'package:produv/sigin./singing.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:produv/pages/final.dart';

void main() {
  runApp(ProviderScope(
      child: MaterialApp(routes: {
    '/': (context) => Signing(),
    '/home': (context) => Home()
  })));
}
