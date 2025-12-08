import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatatanSikapPage extends StatefulWidget {
  const CatatanSikapPage({super.key});

  @override
  State<CatatanSikapPage> createState() => _CatatanSikapState();
}

class _CatatanSikapState extends State<CatatanSikapPage> {
  final List<Map<String, String>> catatanList = [
    {
      "kategori": "Disiplin",
      "catatan": "Datang terlambat",
      "tanggal": "10 Nov 2025",
      "status": "Pending",
    },
    {
      "kategori": "Sikap",
      "catatan": "Membantu teman",
      "tanggal": "09 Nov 2025",
      "status": "Selesai",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Catatan Sikap Saya",
                style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 30),

              // ===== BOX PERHATIAN =====
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  border: Border.all(color: Colors.amber.shade200),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children:[
                        Icon(Icons.warning_amber, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          "Perhatian",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Jika ada catatan yang keliru, silahkan hubungi guru untuk klarifikasi.",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ===== STAT BOXES =====
              _buildStatBox(
                "Total Catatan",
                "0",
                Colors.blue.shade100,
                Icons.edit_document,
                Colors.blue,
              ),
              _buildStatBox(
                "Dalam Perbaikan",
                "0",
                Colors.amber.shade100,
                Icons.flash_on_rounded,
                Colors.amber,
              ),
              _buildStatBox(
                "Sudah Berubah",
                "0",
                Colors.green.shade50,
                Icons.check_circle_outline,
                Colors.green,
              ),

              const SizedBox(height: 20),

              // ===== LIST CATATAN =====
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Catatan Sikap",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),

                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: catatanList.length,
                          itemBuilder: (context, index) {
                            final data = catatanList[index];
                            return catatanItem(
                              kategori: data["kategori"] ?? "-",
                              catatan: data["catatan"] ?? "-",
                              tanggal: data["tanggal"] ?? "-",
                              status: data["status"] ?? "-",
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ===== STAT BOX WIDGET =====
  Widget _buildStatBox(
    String title,
    String value,
    Color bgColor,
    IconData icon,
    Color iconColor,
  ) {
    return Container(
      width: double.infinity,
      height: 110,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                value,
                style: GoogleFonts.poppins(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: bgColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: iconColor, size: 22),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ===== ITEM CATATAN =====
Widget catatanItem({
  required String kategori,
  required String catatan,
  required String tanggal,
  required String status,
}) {
  Color statusColor = status == "Selesai"
      ? Colors.green
      : status == "Pending"
          ? Colors.orange
          : Colors.red;

  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Row(
      children: [
        const Icon(Icons.note_alt, color: Colors.orange),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(kategori, style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(catatan,style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500), maxLines: 2, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 4),
              Text(
                tanggal,
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Text(
          status,
          style: GoogleFonts.poppins(color: statusColor, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
