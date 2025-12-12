import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity, // ✅ penting
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress Belajar",
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Pantau Perkembangan Kompetensi dan meteri pembelajarn Anda",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: StreamBuilder(
                  stream: Stream.periodic(Duration(seconds: 1)),
                  builder: (context, shapshot) {
                    final now = DateTime.now();
                    final tanggal = DateFormat(
                      'EEEE, dd MMMM yyyy',
                    ).format(now);

                    return Text(
                      tanggal,
                      style: GoogleFonts.poppins(
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
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "5",
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
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
                          color: Colors.blue[50],
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
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "0",
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
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
                          color: Colors.green[50],
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
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "2",
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
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
                          color: Colors.deepOrange[50],
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
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "1",
                            style: GoogleFonts.poppins(
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
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
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
                          color: Colors.purple[50],
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
              SizedBox(height: 10),
              kategoriSection("Project Work", [
                laporanCard(
                  judul: "Aplikasi Kasir",
                  tanggal: "12 Nov 2025",
                  status: "Disetujui",
                ),
                laporanCard(
                  judul: "Website Sekolah",
                  tanggal: "10 Nov 2025",
                  status: "Pending",
                ),
              ]),

              kategoriSection("Mobile Apps", [
                laporanCard(
                  judul: "Aplikasi Absensi",
                  tanggal: "09 Nov 2025",
                  status: "Ditolak",
                ),
              ]),

              kategoriSection("UKK", [
                laporanCard(
                  judul: "Aplikasi Kasir",
                  tanggal: "12 Nov 2025",
                  status: "Disetujui",
                ),
                laporanCard(
                  judul: "Website Sekolah",
                  tanggal: "10 Nov 2025",
                  status: "Pending",
                ),
              ]),

              kategoriSection("Gim", [
                laporanCard(
                  judul: "Aplikasi Kasir",
                  tanggal: "12 Nov 2025",
                  status: "Disetujui",
                ),
                laporanCard(
                  judul: "Website Sekolah",
                  tanggal: "10 Nov 2025",
                  status: "Pending",
                ),
              ]),

              kategoriSection("Lainnya", [
                laporanCard(
                  judul: "Aplikasi Kasir",
                  tanggal: "12 Nov 2025",
                  status: "Disetujui",
                ),
                laporanCard(
                  judul: "Website Sekolah",
                  tanggal: "10 Nov 2025",
                  status: "Pending",
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

Widget kategoriSection(String title, List<Widget> items) {
  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12),
            ...items,
          ],
        ),
      ),
    ),
  );
}

Widget laporanCard({
  required String judul,
  required String tanggal,
  required String status,
}) {
  Color statusColor;

  switch (status) {
    case "Disetujui":
      statusColor = Colors.green;
      break;
    case "Pending":
      statusColor = Colors.orange;
      break;
    case "Ditolak":
      statusColor = Colors.red;
      break;
    default:
      statusColor = Colors.grey;
  }

  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.04),
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Icon kiri
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.assignment, color: Colors.blue),
        ),
        const SizedBox(width: 12),

        // Konten teks
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tanggal,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        // Status
        Text(
          status,
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: statusColor,
          ),
        ),
      ],
    ),
  );
}
