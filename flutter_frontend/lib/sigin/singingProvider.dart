import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:produv/sigin./classSignin.dart';

Future<void> casy(
    BuildContext context, dynamic username, dynamic password) async {
  final sioni = await http.post(Uri.parse('http://127.0.0.1:5000/authenticate'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}));
  if (sioni.statusCode == 200) {
    Navigator.pushNamed(context, '/home');
  } else {
    final amini = sioni.body;
    print(amini);
  }
}
