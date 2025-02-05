import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

part 'final.freezed.dart';
part 'final.g.dart';

@freezed
class Display with _$Display {
  factory Display({
    required String image,
    required String name,
    required String number,
  }) = _Display;

  factory Display.fromJson(Map<String, dynamic> json) =>
      _$DisplayFromJson(json);
}

@riverpod
class ButtonDisplay extends _$ButtonDisplay {
  Future<List<Display>> Getbroke() async {
    final world = await http.get(Uri.parse('http://127.0.0.1:5000/data'));
    if (world.statusCode == 200) {
      final pastor = jsonDecode(world.body) as List<dynamic>;
      return pastor
          .map((song) => Display.fromJson(song as Map<String, dynamic>))
          .toList();
    } else {
      print(world.statusCode);
      return [];
    }
  }

  Future<List<Display>> build() async {
    return Getbroke();
  }
}
