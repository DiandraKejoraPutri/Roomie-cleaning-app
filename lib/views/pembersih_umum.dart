import 'package:flutter/material.dart';

class PembersihUmum extends StatelessWidget {
  final List<Map<String, String>> services = [
    {'title': 'Gudang', 'price': 'Rp. 118.000', 'location': 'Sumbawa'},
    {'title': 'Garasi', 'price': 'Rp. 118.000', 'location': 'Jakpus'},
    {'title': 'Aquarium', 'price': 'Rp. 118.000', 'location': 'Jepang'},
    {'title': 'Kolam', 'price': 'Rp. 118.000', 'location': 'Kamboja'},
    {'title': 'Taman', 'price': 'Rp. 507.000', 'location': 'Belanda'},
    {'title': 'Aula', 'price': 'Rp. 888.000', 'location': 'Jember'},
    {'title': 'Sedot WC', 'price': 'Rp. 102.000', 'location': 'Batam'},
    {'title': 'Genteng', 'price': 'Rp. 798.000', 'location': 'Malang'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pembersih Umum"),
        backgroundColor: Colors.blue[700],
        actions: [
          IconButton(icon: Icon(Icons.wifi), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari keperluanmu disini yuk',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterChip(label: Text("Semua"), selected: true, onSelected: (_) {}),
                FilterChip(label: Text("Harga"), selected: false, onSelected: (_) {}),
                FilterChip(label: Text("Wilayah"), selected: false, onSelected: (_) {}),
                FilterChip(label: Text("Costum"), selected: false, onSelected: (_) {}),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                itemCount: services.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 3 / 2,
                ),
                itemBuilder: (context, index) {
                  final item = services[index];
                  return Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item['price']!, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(item['title']!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.location_on, size: 14, color: Colors.grey),
                            SizedBox(width: 4),
                            Expanded(child: Text(item['location']!, style: TextStyle(fontSize: 12))),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Pesan'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Kalender'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}