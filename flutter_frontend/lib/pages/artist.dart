import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Artist extends StatefulWidget {
  String name;
  String image;
  Artist({required this.image, required this.name});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image (Fixed)
          Positioned(
            height: 200,
            width: 500,
            child: Image.asset(
              'greece.png', // Ensure this path is correct
              fit: BoxFit.cover,
            ),
          ),

          // Scrollable Content
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter, // Center-align the content
              child: Column(
                children: [
                  // Example scrollable content
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          const Color.fromARGB(255, 0, 0, 0)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Place',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  // More content
                  for (int i = 0; i < 20; i++)
                    Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        padding: const EdgeInsets.all(16.0),
                        color: const Color.fromARGB(255, 0, 0, 0),
                        child: Text(
                          'Scrollable item play beat game plack qsthbcvnbcvkbhjdfighudfigosdf cnshvxcbvixzgfvzdyxbvdxvgbdfxdyuv68iergfyusdvogxicv$i',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
