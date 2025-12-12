import 'dart:ui'; // untuk ImageFilter
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DirektoriSiswaPage extends StatelessWidget {
  const DirektoriSiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // HEADER: Stack -> image (diblur) + overlay + konten (judul + card search)
          Container(
            width: double.infinity,
            height: 300, // sesuaikan tinggi header jika perlu
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background image yang di-blur
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  child: Image.asset(
                    "assets/images/background.jpg",
                    fit: BoxFit.cover,
                  ),
                ),

                // overlay gelap agar teks lebih kontras (opsional)
                Container(
                  color: Colors.black.withOpacity(0.25),
                ),

                // Konten header (judul, deskripsi, dan white card search)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Direktori Siswa",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // WHITE CARD (search bar + filter) — tidak terpengaruh blur
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Cari nama siswa, NIS, atau rombel...",
                                      hintStyle: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                      prefixIcon: const Icon(Icons.search_rounded),
                                      prefixIconColor: Colors.blueGrey,
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: Colors.black12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(color: Colors.black12),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.symmetric(horizontal: 22),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF1E3A8A),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cari",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // filter
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black12),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.filter_list,
                                    size: 18,
                                    color: Colors.black87,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "Filter Lanjutan",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
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
              ],
            ),
          ),

          // CONTENT: daftar siswa dan pagination
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Menampilkan 1 - 12 dari 538 siswa",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 20),

                // CARD SISWA 1
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('assets/images/roy.png'),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Safa Fadillah",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "12310027 | PPLG XII - 4 | Cic 2",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.folder_open,
                                size: 18,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                "2 Portfolio",
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                "13 Sertifikat",
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E3A8A),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Lihat Detail",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // CARD SISWA 2
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('assets/images/roy.png'),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Roy Agung Pamungkas",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "12510778 | PPLG X-3 | Cia 1",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.folder_open,
                                size: 18,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                "2 Portfolio",
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: Colors.black54,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                "13 Sertifikat",
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E3A8A),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Lihat Detail",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Icon(
                                Icons.arrow_forward,
                                size: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // next & previous
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        side: const BorderSide(color: Colors.black26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "<< Previous",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        side: const BorderSide(color: Colors.black26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Next >>",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // footer
          Container(
            width: double.infinity,
            color: const Color(0xFF1E3A8A),
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.call, color: Colors.white, size: 20),
                    SizedBox(width: 20),
                    Icon(Icons.camera_alt, color: Colors.white, size: 20),
                    SizedBox(width: 20),
                    Icon(Icons.camera, color: Colors.white, size: 20),
                    SizedBox(width: 20),
                    Icon(Icons.video_library, color: Colors.white, size: 20),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    height: 1.4,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
