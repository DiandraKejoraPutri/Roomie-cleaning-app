import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login'); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 123, 220),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sans',
              ),
              children: [
                TextSpan(
                  text: "ROOM",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                TextSpan(
                  text: "IE",
                  style: TextStyle(color: Color.fromARGB(255, 20, 123, 220)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
