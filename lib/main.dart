import 'package:flutter/material.dart';
import 'package:roomie/views/splash.dart';
import 'package:roomie/views/login.dart';
import 'package:roomie/views/verification.dart';
import 'package:roomie/views/finish_page.dart';
import 'package:roomie/views/home.dart';
import 'package:roomie/views/pembersih.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomeScreen(),
        '/pembersihHarian': (context) => PembersihHarian(),
      },
    );
  }
}
