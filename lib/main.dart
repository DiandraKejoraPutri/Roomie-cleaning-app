import 'package:flutter/material.dart';
import 'package:roomie/views/bangunan.dart';
import 'package:roomie/views/cuci_setrika.dart';
import 'package:roomie/views/cuciproperti.dart';
import 'package:roomie/views/detail_pesanan.dart';
import 'package:roomie/views/pembayaran_page.dart';
import 'package:roomie/views/pembersih_umum.dart';
import 'package:roomie/views/semprotan.dart';
import 'package:roomie/views/serangga.dart';
import 'package:roomie/views/splash.dart';
import 'package:roomie/views/login.dart';
import 'package:roomie/views/sukses_pesan.dart';
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
        '/permbersihUmum' : (context) => PembersihUmum(),
        '/serangga': (context)=> Serangga(),
        '/bangunan' :(context)=> Bangunan(),
        '/cucisetrika' :(context)=>CuciSetrika(),
        '/cuciproperti' :(context)=>Cuciproperti(),
        '/semprotan' :(context)=>Semprotan(),
        '/detailpesana':(context)=>DetailLayananPage(),
         '/pembayaran': (context) => PembayaranPage(),
        '/suksesbayar': (context) => BerhasilPemesananPage()
      },
    );
  }
}
