import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DynamicFeelPage extends StatelessWidget {
  final String feelName;

  DynamicFeelPage({required this.feelName});

  @override
  Widget build(BuildContext context) {
    // You can add different widgets or content here based on the feelName
    return Scaffold(
      appBar: AppBar(
        title: Text("$feelName Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dynamically change content based on feelName
            if (feelName == 'liked songs')
              Text("You are in a happy mood!", style: TextStyle(fontSize: 24)),
            if (feelName == 'Kanye West')
              Text("unanifaa.", style: TextStyle(fontSize: 24)),
            if (feelName != 'Happiness' && feelName != 'Sadness')
              Text("This is a generic page for $feelName.",
                  style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
