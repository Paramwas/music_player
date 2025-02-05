import "package:flutter/material.dart";
import "package:produv/pages/display.dart";
import "package:produv/prove/futures.dart";
import "package:produv/prove/futures.dart";

Widget buildFutureDetails(
  String feelName,
) {
  return FutureBuilder<List>(
    future: fetchDetails(feelName),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      } else if (snapshot.hasError) {
        return Center(
          child: Text(
            'Error: ${snapshot.error}',
            style: const TextStyle(color: Colors.red, fontSize: 16),
          ),
        );
      } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
        final details = snapshot.data!;
        return Column(
          children: details.map((detail) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'http://127.0.0.1:5000${detail.image}',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey,
                    );
                  },
                ),
                // Song name
                Text(
                  '${detail.song}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Artist name
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Playyer(
                                  feelName: detail.artist,
                                  feelImage: detail.image)));
                    },
                    child: Text(
                      '${detail.artist}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )),

                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.white,
                    ))
                // Image
              ],
            );
          }).toList(),
        );
      } else {
        return const Center(
          child: Text('No data found'),
        );
      }
    },
  );
}
