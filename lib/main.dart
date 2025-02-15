import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/login.dart';

import 'Screen/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title:  'LoginPage',
      theme: ThemeData(
        textTheme:
        GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

