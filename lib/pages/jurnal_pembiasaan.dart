import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jurnal Pembiasaan",
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "NOVEMBER - 2025",
              style: GoogleFonts.poppins(fontSize: 16),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "← Bulan Sebelumnya",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Text(
              "A. Pembiasaan harian",
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.green),
                SizedBox(width: 2),
                Text("Sudah diisi"),
                SizedBox(width: 28),
                CircleAvatar(radius: 6, backgroundColor: Colors.grey),
                SizedBox(width: 2),
                Text("Belum diisi"),
                SizedBox(width: 28),
                CircleAvatar(radius: 6, backgroundColor: Colors.red),
                SizedBox(width: 2),
                Text("Tidak diisi"),
              ],
            ),
            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(30, (i) {
                return Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          (i + 1).toString().padLeft(2, '0'),
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            
            // B. Pekerjaan yang dilakukan - ExpansionTile
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                title: Text(
                  "B. Pekerjaan yang dilakukan",
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                initiallyExpanded: true,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade300, width: 0.8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Belum ada pekerjaan yang diinput.",
                          style: GoogleFonts.poppins(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "+ Tambah Pekerjaan",
                            style: GoogleFonts.poppins(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            
            // C. Materi yang dipelajari - ExpansionTile
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                title: Text(
                  "C. Materi yang dipelajari",
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                initiallyExpanded: true,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade300, width: 0.8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Belum ada materi yang diinput.",
                          style: GoogleFonts.poppins(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "+ Tambah Materi",
                            style: GoogleFonts.poppins(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            const Row(
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.green),
                SizedBox(width: 6),
                Text("A : Approved   "),
                SizedBox(width: 18),
                CircleAvatar(radius: 6, backgroundColor: Colors.orange),
                SizedBox(width: 6),
                Text("P : Pending   "),
                SizedBox(width: 18),
                CircleAvatar(radius: 6, backgroundColor: Colors.red),
                SizedBox(width: 6),
                Text("R : Revisi"),
              ],
            ),
            
            const SizedBox(height: 30),
            
            // D. Poin - ExpansionTile dengan List per Minggu
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300, width: 0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                title: Text(
                  "D. Poin",
                  style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                initiallyExpanded: true,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade300, width: 0.8),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Minggu 1
                        _buildWeekSection(
                          weekTitle: "Minggu 1",
                          totalPoin: "0",
                          projectPoin: "0",
                          materiPoin: "0",
                        ),
                        const SizedBox(height: 16),
                        
                        // Minggu 2
                        _buildWeekSection(
                          weekTitle: "Minggu 2",
                          totalPoin: "19",
                          projectPoin: "0",
                          materiPoin: "0",
                        ),
                        const SizedBox(height: 16),
                        
                        // Minggu 3
                        _buildWeekSection(
                          weekTitle: "Minggu 3",
                          totalPoin: "0",
                          projectPoin: "0",
                          materiPoin: "0",
                        ),
                        const SizedBox(height: 16),
                        
                        // Minggu 4
                        _buildWeekSection(
                          weekTitle: "Minggu 4",
                          totalPoin: "0",
                          projectPoin: "0",
                          materiPoin: "0",
                        ),
                        const SizedBox(height: 20),
                        
                        // Total Keseluruhan
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.blue.shade200, width: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Jumlah keseluruhan poin",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "19",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 30),
          ],
        ),
      );
  }

  Widget _buildWeekSection({
    required String weekTitle,
    required String totalPoin,
    required String projectPoin,
    required String materiPoin,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300, width: 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                weekTitle,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Total: $totalPoin",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          _buildPoinItem(
            "(5) mengerjakan project/adanya update progress belajar",
            projectPoin,
          ),
          const SizedBox(height: 6),
          _buildPoinItem(
            "(1-5) poin dari pertanyaan atau laporan pengetahuan materi",
            materiPoin,
          ),
        ],
      ),
    );
  }

  Widget _buildPoinItem(String title, String poin) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ),
        Text(
          poin,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}