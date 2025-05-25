import 'package:flutter/material.dart';
import 'package:roomie/views/detail_pesanan.dart';
import 'package:roomie/views/pembersih.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Pesan"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Kalender"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    "Hai, Salsa C.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Text(
                    "Jl. Setaman 38c, Malang",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Mau diBersihin siapa?",
                        border: InputBorder.none,
                        icon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: const Color.fromARGB(255, 12, 61, 101),
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get a discount for this week!",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            "Learn more here",
                            style: TextStyle(color: Colors.grey[350]),
                          ),
                        ],
                      ),
                      Icon(Icons.local_offer, color: Colors.white, size: 30),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Pelayanan Kami",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10),

            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: [
                _serviceItem(context, Icons.cleaning_services, "Pembersih Harian", "/pembersihHarian"),
                _serviceItem(context, Icons.clean_hands, "Pembersihan Umum", "/permbersihUmum"),
                _serviceItem(context, Icons.bug_report, "Bersihkan Serangga", "/serangga"),
                _serviceItem(context, Icons.build, "Bersihkan Bangunan", "/bangunan"),
                _serviceItem(context, Icons.local_laundry_service, "Cuci Setrika", "/cucisetrika"),
                _serviceItem(context, Icons.house, "Cuci Properti", "/cuciproperti"),
                _serviceItem(context, Icons.sanitizer, "Semprotan", "/semprotan"),
                _serviceItem(context, Icons.menu_rounded, "Lainnya"),
              ],
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Rekomendasi Tukang",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _workerCard("Sultan Hasanudin", "Rp. 75.000 / hr", "⭐ 4.3", "W Cleaner"),
                  _workerCard("Kejora Berry", "Rp. 200.000 / hr", "⭐ 4.4", "Cleaning & Wiping"),
                  _workerCard("Mario Dendy", "Rp. 185.000 / hr", "⭐ 4.5", "Furniture Cleaning"),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Sering Dipesan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10),

            GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailLayananPage()),
    );
  },
  child: _orderCard("Membersihkan Dapur", "Kedungkandang, Malang", "Rp. 70.000", "⭐ 4.3"),
),

            _orderCard("Menemani Melipat", "Kedungkandang, Malang", "Rp. 150.000", "⭐ 5.3"),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _serviceItem(BuildContext context, IconData icon, String title, [String? route]) {
    return GestureDetector(
      onTap: () {
        if (route != null) {
          Navigator.pushNamed(context, route);
        }
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue[100],
            child: Icon(icon, color: Colors.blue),
          ),
          SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _workerCard(String name, String price, String rating, String job) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 120,
      child: Column(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/user.png")),
          SizedBox(height: 5),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          Text(price, style: TextStyle(color: Colors.blue), textAlign: TextAlign.center),
          Text("$rating ($job)", style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _orderCard(String title, String location, String price, String rating) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(Icons.cleaning_services, color: Colors.blue, size: 40),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(price, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                  Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("$rating ⭐ | $location", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}