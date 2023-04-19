import 'package:flutter/material.dart';

import '../responsive/responsive_layout.dart';
import './pages/index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shashank Pathak- Flutter Developer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "OpenSans",
      ),
      home: const ResponsiveLayout(
        desktopBody: IndexPage(),
        mobileBody: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Text(
              "Under-Development",
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
