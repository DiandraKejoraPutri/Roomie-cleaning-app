import 'package:flutter/material.dart';
import 'package:roomie/views/finish_page.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.blue,
  leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
  title: Text("Verifikasi Kode"),
  centerTitle: true, 
  actions: [
    IconButton(
      icon: Icon(Icons.help),
      onPressed: () {
      },
    ),
  ],
),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Image.asset(
                "assets/images/login_illustration.png", // Pastikan path benar!
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                "Masukkan Kode Keamanan",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("Kita punya kode yang sudah dikirim ke email kamu"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        ":)",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Kode ini akan kadaluarsa dalam beberapa detik"),
              SizedBox(height: 20),
              ElevatedButton(
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => FinishPage()),
    );
  },
  child: Text("Eksekusi"),
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50),
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}