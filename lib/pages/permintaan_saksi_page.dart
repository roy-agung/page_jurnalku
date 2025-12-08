import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PermintaanSaksiPage extends StatelessWidget {
  const PermintaanSaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tanggal = 'Thursday, 13 November 2025';

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity, // ✅ penting
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
                    style: GoogleFonts.poppins(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Kelola permintaan menjadi saksi dari siswa lain',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
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
                      style: GoogleFonts.poppins(
                        color: Colors.blue.shade700,
                        fontSize: 14,
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
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Theme(
                        data: Theme.of(
                          context,
                        ).copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          title: Text(
                            "Permintaan Saksi",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Lihat detail permintaan",
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[500],
                            ),
                          ),
                          leading: const Icon(
                            Icons.assignment,
                            color: Colors.blue,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [
                            _buildHeaderRow(),
                            const SizedBox(height: 8),
                            _buildDataRow("Ahmad", "12 Des 2025", "Pending"),
                            _buildDataRow("Rina", "11 Des 2025", "Disetujui"),
                            _buildDataRow("Dimas", "10 Des 2025", "Ditolak"),
                          ],
                        ),
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

Widget _buildHeaderRow() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            "Pengirim",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Tanggal",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Status",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildDataRow(String col1, String col2, String col3) {
  Color statusColor;

  if (col3 == "Disetujui") {
    statusColor = Colors.green;
  } else if (col3 == "Ditolak") {
    statusColor = Colors.red;
  } else {
    statusColor = Colors.orange;
  }

  return Container(
    margin: const EdgeInsets.only(bottom: 6),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            col1,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            col2,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            col3,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: statusColor,
            ),
          ),
        ),
      ],
    ),
  );
}
