import 'package:flutter/material.dart';

class PermintaanSaksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tanggal = 'Thursday, 13 November 2025';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined, color: Colors.black54),
              onPressed: () {},
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (context) => [
                PopupMenuItem(value: 'profile', child: Text('Profil')),
                PopupMenuItem(value: 'logout', child: Text('Logout')),
              ],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Safa Fadillah',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'PPLG XII-4',
                        style: TextStyle(color: Colors.black54, fontSize: 11),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 16,
                    child: Text('S', style: TextStyle(fontSize: 14)),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.black54),
                ],
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade300, height: 1.0),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Judul dan Deskripsi
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Permintaan Saksi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Kelola permintaan menjadi saksi dari siswa lain',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      tanggal,
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Kotak tabel
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Card(
                      child: ExpansionTile(
                        title: Text("Permintaan Saksi"),
                        subtitle: Text("Lihat Detail Permintaan"),
                        childrenPadding: EdgeInsets.all(16.0),
                        children: [
                          tampilData("Pengirim", "Tanggal", "Status"),
                          tampilData("-", "-", "-"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tampilData(String col1, String col2, String col3) {
  return Table(
    columnWidths: const {
      0: FlexColumnWidth(2),
      1: FlexColumnWidth(2),
      2: FlexColumnWidth(1),
    },
    children: [
      TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(col1),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(col2),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(col3),
          ),
        ],
      )
    ],
  );
}

