import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:convert/convert.dart';
import 'package:http/http.dart' as http;

part 'image.g.dart';
part 'image.freezed.dart';

@freezed
class Song with _$Song {
  factory Song({
    required String image,
    required String number,
    required String tag,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}

@riverpod
class RetiveSong extends _$RetiveSong {
  Future<List<Song>> Trust() async {
    final elle = await http.get(Uri.parse('http://127.0.0.1:5000/data'));
    if (elle.statusCode == 200) {
      final zen = jsonDecode(elle.body) as List<dynamic>;
      return zen
          .map((shrine) => Song.fromJson(shrine as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to fetch songs: ${elle.statusCode}');
    }
  }

  Future<List<Song>> build() async {
    return Trust();
  }

  
}
