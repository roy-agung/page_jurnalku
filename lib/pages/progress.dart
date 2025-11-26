import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

Widget tampilData(String labelData, String value) {
  return Padding(padding: EdgeInsets.all(10),
    child: Row(
      children: [
        SizedBox(
          width: 100, child: Text(labelData),),
          Expanded(child: Text(value),),
      ],
    ),
    );
}

class ProgressBelajar extends StatelessWidget {
  const ProgressBelajar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 160)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Roy Agung Pamungkas', style: TextStyle(fontSize: 18)),
                SizedBox(width: 10),
                Text('PPLG XII-4', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(width: 10),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/roy.png'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress Belajar",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Pantau Perkembangan Kompetensi dan meteri pembelajarn Anda",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue[50],
                ),
                alignment: Alignment.center,
                child: StreamBuilder(
                  stream: Stream.periodic(Duration(seconds: 1)),
                  builder: (context, shapshot) {
                    final now = DateTime.now();
                    final tanggal = DateFormat(
                      'EEEE, dd MMMM yyyy',
                    ).format(now);

                    return Text(
                      tanggal,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[900],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Total Pengajuan",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.blue[900],
                                size: 10,
                              ),
                              Text(
                                "Semua Status",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40, 
                        width: 40, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), 
                          color: Colors.blue[50]
                        ),
                        child: Icon(
                          Icons.check_circle_outline,
                          color: Colors.blue[700],
                          size: 25,
                        ),
                          ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Halaman Ini",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.green[600],
                                size: 10,
                              ),
                              Text(
                                "Data Ditampilkan",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.green[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40, 
                        width: 40, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), 
                          color: Colors.green[50]
                        ),
                        child: Icon(
                          Icons.date_range_outlined,
                          color: Colors.green[700],
                          size: 25,
                        ),
                          ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Status Panding",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.deepOrange[700],
                                size: 10,
                              ),
                              Text(
                                "Perlu Validasi",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.deepOrange[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40, 
                        width: 40, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), 
                          color: Colors.deepOrange[50]
                        ),
                        child: Icon(
                          Icons.lock_clock,
                          color: Colors.deepOrange[700],
                          size: 25,
                        ),
                          ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Total Halaman",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.purple[700],
                                size: 10,
                              ),
                              Text(
                                "Navigasi Tersedia",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.purple[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40, 
                        width: 40, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), 
                          color: Colors.purple[50]
                        ),
                        child: Icon(
                          Icons.navigation_outlined,
                          color: Colors.purple[700],
                          size: 25,
                        ),
                          ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: ExpansionTile(
                  title: Text("Project Work"),
                  subtitle: Text("Kompetensi dan materi pembelajaran"),
                  childrenPadding: EdgeInsets.all(16.0),
                  children: [
                    tampilData("Kopetensi", "-"),
                    tampilData("Guru", "-"),
                    tampilData("Tanggal", "-"),
                    tampilData("Status", "-"),
                    tampilData("Catatan Guru", "-"),
                    tampilData("Catatan Siswa", "-"),
                  ],
                  
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: ExpansionTile(
                  title: Text("Mobile Apps"),
                  subtitle: Text("Kompetensi dan materi pembelajaran"),
                  childrenPadding: EdgeInsets.all(16.0),
                  children: [
                    tampilData("Kopetensi", "-"),
                    tampilData("Guru", "-"),
                    tampilData("Tanggal", "-"),
                    tampilData("Status", "-"),
                    tampilData("Catatan Guru", "-"),
                    tampilData("Catatan Siswa", "-"),
                  ],
                  
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: ExpansionTile(
                  title: Text("UKK (Ujian Kopetensi Keahlian)"),
                  subtitle: Text("Kompetensi dan materi pembelajaran"),
                  childrenPadding: EdgeInsets.all(16.0),
                  children: [
                    tampilData("Kopetensi", "-"),
                    tampilData("Guru", "-"),
                    tampilData("Tanggal", "-"),
                    tampilData("Status", "-"),
                    tampilData("Catatan Guru", "-"),
                    tampilData("Catatan Siswa", "-"),
                  ],
                  
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: ExpansionTile(
                  title: Text("Gim"),
                  subtitle: Text("Kompetensi dan materi pembelajaran"),
                  childrenPadding: EdgeInsets.all(16.0),
                  children: [
                    tampilData("Kopetensi", "-"),
                    tampilData("Guru", "-"),
                    tampilData("Tanggal", "-"),
                    tampilData("Status", "-"),
                    tampilData("Catatan Guru", "-"),
                    tampilData("Catatan Siswa", "-"),
                  ],
                  
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: ExpansionTile(
                  title: Text("Lainnya"),
                  subtitle: Text("Kompetensi dan materi tambahan"),
                  childrenPadding: EdgeInsets.all(16.0),
                  children: [
                    tampilData("Kopetensi", "projek uji kelayakan"),
                    tampilData("Tanggal", "26 Nov 2025"),
                    tampilData("Status", "Tidak ada catatan"),
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
