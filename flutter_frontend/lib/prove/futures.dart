import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:convert/convert.dart';
import 'dart:convert';

part 'futures.freezed.dart';
part 'futures.g.dart';

@freezed
class Trial with _$Trial {
  factory Trial(
      {required String artist,
      required String song,
      required String image}) = _Trial;

  factory Trial.fromJson(Map<String, dynamic> json) => _$TrialFromJson(json);
}

class PlaceB {
  final String table;

  PlaceB({required this.table});
}

Future<List<Trial>> fetchDetails(String name) async {
  try {
    final lonely =
        await http.get(Uri.parse('http://127.0.0.1:5000/place/$name'));
    if (lonely.statusCode == 200) {
      final lydia = jsonDecode(lonely.body) as List<dynamic>;
      return lydia
          .map((sat) => Trial.fromJson(sat as Map<String, dynamic>))
          .toList();
    } else {
      print('Error: ${lonely.statusCode}');
      return [];
    }
  } catch (e) {
    print('Failed to fetch details: $e');
    return [];
  }
}
