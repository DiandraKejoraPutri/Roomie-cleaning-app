import 'package:flutter/material.dart';
import 'package:roomie/views/verification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
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
  title: Text("Log In"),
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
              SizedBox(height: 50),
              Image.asset("assets/images/login_illustration.png", height: 150),
              SizedBox(height: 20),
              Text(
                "Selamat Datang Kembali!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("Halo!, Login untuk masuk"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.g_translate),
                    label: Text("Google"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.blue),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text("Facebook"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Atau Masuk melalui"),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Alamat Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("I have forgotten?"),
                
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerificationPage()),
    );
  },
  child: Text("Masukkan Akun"),
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 50),
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
  ),
),


              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text("Tidak punya Akun? Buat Akun"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}