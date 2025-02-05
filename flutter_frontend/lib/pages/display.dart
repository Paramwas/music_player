import 'package:flutter/material.dart';
import 'package:produv/class/songButton.dart';
import 'package:produv/class/songs.dart';
import 'package:produv/prove/futures.dart';
import 'package:produv/provider/side.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:produv/class/place.dart';

import 'dart:convert';

class Playyer extends ConsumerStatefulWidget {
  final String feelName;
  final String feelImage; // Field to receive feelName

  const Playyer({super.key, required this.feelName, required this.feelImage});

  @override
  ConsumerState<Playyer> createState() => _PlayyerState();
}

class _PlayyerState extends ConsumerState<Playyer> {
  List<Trial> details = [];
  bool isLoading = true;

  List<Songs> call = [
    Songs(image: 'greece.png', song: 'what you want', artist: 'don tolver')
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(232, 0, 0, 0),
                  const Color.fromARGB(255, 8, 255, 255),
                ],
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.network(
                      'http://127.0.0.1:5000/${widget.feelImage}', // Display the image URL
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Playlist',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Text(
                            widget.feelName,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          Text(
                            'asake, tems, wizkid and more',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.stream, color: Colors.green),
                    Text(
                      'Spotify',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 14),
                    ),
                    Text(
                      '50 songs, about 2hrs 50mins',
                      style: TextStyle(
                          color: Color.fromARGB(221, 255, 255, 255),
                          fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.green,
                          size: 50,
                        ),
                        Icon(
                          Icons.plus_one,
                          color: Colors.white,
                          size: 30,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.list,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.list,
                        color: Colors.white,
                        size: 23,
                      ),
                      label: Text(
                        'List',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Image',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'Song',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'Artist',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildFutureDetails(widget.feelName),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
