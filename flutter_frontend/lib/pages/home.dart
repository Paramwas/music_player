import 'package:flutter/material.dart';
import 'package:produv/class/button.dart';
import 'package:produv/class/buttonhome.dart';
import 'package:produv/class/songButton.dart';
import 'package:produv/prove/futures.dart';
import 'package:produv/provider/final.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:produv/pages/fell.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Adjust import as needed

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  List<TopButton> searchButton = [
    TopButton(name: 'Album'),
    TopButton(name: 'Artist'),
    TopButton(name: 'Song'),
    TopButton(name: 'Podcasts and Shows'),
  ];

  final bckColor = const Color.fromARGB(61, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    final mwaff = ref.watch(buttonDisplayProvider);

    return Scaffold(
      body: SafeArea(
        child: ScreenUtilInit(
          designSize: Size(360,
              690), // Design size for the base resolution (adjust to your design size)
          minTextAdapt: true,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, const Color.fromARGB(255, 0, 0, 0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  // Header Row with icons and buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(foregroundColor: bckColor),
                        child: Row(
                          children: [
                            Icon(
                              Icons.library_add_check_outlined,
                              color: Colors.white,
                              size:
                                  30, // Responsive sizing using flutter_screenutil
                            ),
                            SizedBox(
                                width: 10), // Use screenutil to adjust spacing
                            Text(
                              'LIBRARY',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18, // Responsive text size
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            style:
                                IconButton.styleFrom(foregroundColor: bckColor),
                            icon: Icon(
                              Icons.plus_one,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5), // Responsive spacing
                          IconButton(
                            onPressed: () {},
                            style:
                                IconButton.styleFrom(foregroundColor: bckColor),
                            icon: Icon(
                              Icons.back_hand,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Search and button row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: searchButton
                        .map((press) => button(press.name))
                        .toList(),
                  ),

                  // Recent search row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(foregroundColor: bckColor),
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(foregroundColor: bckColor),
                        icon: Icon(
                          Icons.list,
                          size: 30,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Recents',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15, // Responsive font size
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Song list using GridView
                  mwaff.when(
                    data: (song) {
                      return Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            // Check screen width to decide the number of columns
                            int crossAxisCount = constraints.maxWidth > 700
                                ? 2
                                : 1; // Use 2 columns for larger screens, 1 for small screens

                            return GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    crossAxisCount, // Number of columns will adjust based on screen size
                                crossAxisSpacing:
                                    0.5, // Horizontal space between items
                                mainAxisSpacing:
                                    0.5, // Vertical space between items
                                childAspectRatio:
                                    8, // Adjust this ratio for a rectangular grid item
                              ),
                              itemCount:
                                  song.length, // Number of items to display
                              itemBuilder: (context, index) {
                                return Container(
                                  child: Butonsong(context, ref, song[index]),
                                ); // Use your custom widget to render content
                              },
                            );
                          },
                        ),
                      );
                    },
                    error: (error, StackTrace) => Center(
                      child: Text('$error'),
                    ),
                    loading: () => CircularProgressIndicator(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
