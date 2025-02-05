import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), // Base design size
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Grid Example',
          home: ResponsiveGridPage(),
        );
      },
    );
  }
}

class ResponsiveGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Grid Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w), // Scaled padding
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Dynamically determine the number of columns based on screen width
            int crossAxisCount = constraints.maxWidth > 600
                ? 5 // Large screens: 4 items per row
                : 1; // Small screens: 2 items per row

            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16.w, // Spacing between columns
                mainAxisSpacing: 16.h, // Spacing between rows
                childAspectRatio: 2 / 3, // Aspect ratio for each item
              ),
              itemCount: 10, // Total number of items
              itemBuilder: (context, index) {
                return _buildCustomCard('Card ${index + 1}');
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildCustomCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.r), // Scaled corner radius
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp, // Scaled font size
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
