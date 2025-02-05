import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ynamicFeelPage extends StatelessWidget {
  final String feelName;

  // Constructor to receive the feel name
  ynamicFeelPage({Key? key, required this.feelName}) : super(key: key);

  // Method to fetch the details from the API
  Future<Map<String, dynamic>> fetchDetails(String feelName) async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:5000/place/$feelName'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.isNotEmpty ? data[0] as Map<String, dynamic> : {};
    } else {
      throw Exception('Failed to load details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of $feelName'),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder<Map<String, dynamic>>(
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
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Display the name
                  Text(
                    'Name: ${details['name']}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Display the image
                  Image.network(
                    'http://127.0.0.1:5000${details['image']}',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.broken_image,
                        size: 100,
                        color: Colors.grey,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  // Display the number
                  Text(
                    'Number: ${details['number']}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  // Display trace or other details
                  Text(
                    'Trace: ${details['trace']}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  // Back button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: const Text('Go Back'),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('No data found'),
            );
          }
        },
      ),
    );
  }
}
