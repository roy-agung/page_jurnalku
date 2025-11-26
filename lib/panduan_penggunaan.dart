import 'package:flutter/material.dart';

class PanduanPenggunaan extends StatelessWidget {
  const PanduanPenggunaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Icon(Icons.home_outlined),
        actions: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Bintang Novian Pramesrawan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("PPLG XII-4",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                ],
              ),
              SizedBox(width: 8),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/roy.png'),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsGeometry.all(16),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu_book,
                    color: Colors.blue[900],
                    size: 48,
                  ),
                  SizedBox(width: 16),
                  Text(
                'Panduan Penggunaan',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              ]
              ),
              SizedBox(height: 8),
              Text(
                "Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.",
                style: TextStyle(fontSize: 16),
                ),
              SizedBox(height: 24),
              Text("Umum",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(height: 2,),
              SizedBox(height: 12),
              
              // Unggah Profil
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Unggah Profil",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk mengunggah profil pengguna",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),

              // Ganti Password
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.password,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Ganti Password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk Mengganti password pengguna",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),

              // Untuk SISWA
              Text("Untuk Siswa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(height: 2,),
              SizedBox(height: 12),

              // Mengisi Jurnal Harian
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.person_pin,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Mengisi Jurnal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk Mengisi Kegiatan Sehari - hari",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),

              // Kelengkapan Profil 
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.person_remove,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Kelengkapan Profil",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk melengkapi profil",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),

              // Portfolio
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.image,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Mengelola Portfolio",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk Menambah, edit dan hapus sertifikat",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),

              // Setifikat
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.checklist,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "Mengelola Sertifikat",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk menambah, edit dan hapus sertifikat",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),

              // catatan sikap
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.info,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                    
                  title: Text(
                    "Catatan Sikap Saya",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "Panduan Untuk melihat dan memahami catatan sikap",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
        )
      ),
    );
  }
}