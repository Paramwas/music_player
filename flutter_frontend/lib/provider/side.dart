import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

part 'side.freezed.dart';
part 'side.g.dart';

@freezed
class TagSong with _$TagSong {
  factory TagSong(
      {required String song,
      required String artist,
      required String image}) = _TagSong;

  factory TagSong.fromJson(Map<String, dynamic> json) =>
      _$TagSongFromJson(json);
}

@riverpod
class SongPlace extends _$SongPlace {
  Future<List<TagSong>> Neyo(String name) async {
    final radio = await http.get(Uri.parse('http://127.0.0.1:5000/place/$name'
    ,)
    );
    if (radio.statusCode == 200) {
      final place = jsonDecode(radio.body) as List<dynamic>;
      return place
          .map((start) => TagSong.fromJson(start as Map<String, dynamic>))
          .toList();
    } else {
      final error = radio.body;
      print('$error');
      return [];
    }
  }

  Future<List<TagSong>> build() async {
    return [];
  }
}
