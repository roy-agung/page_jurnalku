import 'package:flutter/material.dart';
import 'package:page_jurnalku/pages/progress.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity, // ✅ penting
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF0A2E6D), // Biru tua soft (lebih pekat tapi halus)
                    Color(0xFF1E88E5), // Biru sedang soft
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Selamat Datang di Jurnalku!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(fontSize: 14, color: Colors.white70,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            _buildInfoCard(
              title: "Apa itu Jurnalku?",
              text:
                  "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time.",
              textColor: Colors.white,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF0A2E6D), // Biru tua
                  Color(0xFF1E88E5), // Biru sedang
                ],
              ),
            ),

            SizedBox(height: 30),
            _buildFeatureCard(
              icon: Icons.school,
              title: "Dirancang khusus",
              description:
                  "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
            ),
            SizedBox(height: 30),
            _buildFeatureCard(
              icon: Icons.grade,
              title: "Efektif",
              description:
                  "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
            ),
            SizedBox(height: 30),
            _buildFeatureCard(
              icon: Icons.edit_note,
              title: "Terintegrasi",
              description:
                  "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MENU APLIKASI",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 12),
                  _buildMenuSection([
                    _buildMenuItem(
                      Icons.person_outline,
                      "Profil",
                      "Lihat dan kelola profilmu di sini.",
                    ),
                    _buildMenuItem(
                      Icons.folder_open,
                      "Portofolio",
                      "Lihat dan kelola portofolio kompetensimu di sini.",
                    ),
                    _buildMenuItem(
                      Icons.workspace_premium,
                      "Sertifikat",
                      "Lihat dan unduh sertifikat kompetensimu di sini.",
                    ),
                  ]),
                  SizedBox(height: 16),
                  _buildMenuSection([
                    _buildMenuItem(
                      Icons.book_outlined,
                      "Jurnal Pembiasaan",
                      "Catat dan pantau kegiatan pembiasaan harianmu.",
                    ),
                    _buildMenuItem(
                      Icons.people_outline,
                      "Permintaan Saksi",
                      "Lihat teman yang mengajukan permintaan saksi.",
                    ),
                    _buildMenuItem(
                      Icons.trending_up_outlined,
                      "Progress",
                      "Pantau perkembangan kompetensimu di sini.",
                    ),
                    _buildMenuItem(
                      Icons.warning,
                      "Catatan Sikap",
                      "Lihat catatan sikap dan perilaku dari guru.",
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "STATISTIK KOMPETENSI",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildStatCard(
                    title: "Materi Diselesaikan",
                    value: "0",
                    valueColor: Colors.green,
                    label: "Selesai",
                    labelColor: Colors.green,
                    icon: Icons.check_circle,
                    iconBg: Colors.green.withOpacity(0.15),
                    iconColor: Colors.green,
                  ),
                  SizedBox(height: 20),
                  _buildStatCard(
                    title: "Pengajuan Pending",
                    value: "0",
                    valueColor: Colors.orange,
                    label: "Pending",
                    labelColor: Colors.orange,
                    icon: Icons.access_time,
                    iconBg: Colors.orange.withOpacity(0.15),
                    iconColor: Colors.orange,
                  ),
                  SizedBox(height: 20),
                  _buildStatCard(
                    title: "Materi Hari Ini",
                    value: "0",
                    valueColor: Colors.blue,
                    label: "Hari Ini",
                    labelColor: Colors.blue,
                    icon: Icons.calendar_today,
                    iconBg: Colors.blue.withOpacity(0.15),
                    iconColor: Colors.blue,
                  ),
                  SizedBox(height: 20),
                  _buildStatCard(
                    title: "Materi Revisi",
                    value: "0",
                    valueColor: Colors.purple,
                    label: "Revisi",
                    labelColor: Colors.purple,
                    icon: Icons.refresh,
                    iconBg: Colors.purple.withOpacity(0.15),
                    iconColor: Colors.purple,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Progress Akademik",
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildItem("Selesai", Colors.blue, "0"),
                    SizedBox(height: 8),
                    _buildItem("Pending", Colors.purple, "0"),
                    SizedBox(height: 8),
                    _buildItem("Belum", Colors.blueAccent, "0"),
                    SizedBox(height: 8),
                    _buildItem("Hari Ini", Colors.teal, "0"),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProgressPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Lihat Progress Kamu",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_right_alt, color: Colors.blue[800]),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Belum ada kompetensi / progress",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.blue[600],
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          "Lihat semua Kompetensi",
                          style: GoogleFonts.poppins(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_right_alt, size: 18),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.blueGrey,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    Color? color,
    Gradient? gradient,
    required String title,
    required String text,
    Color textColor = Colors.white,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          gradient: gradient,
          color: gradient == null ? color : null,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 15,
                height: 1.5,
                color: textColor.withOpacity(0.9),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 45, color: Colors.blue[900]),
            SizedBox(height: 12),
            Text(
              title,
              style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(List<Widget> children) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String subtitle) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.blue[700]),
          title: Text(
            title,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          subtitle: Text(subtitle, style: GoogleFonts.poppins(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w500)),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          contentPadding: EdgeInsets.zero,
        ),
        Divider(height: 1),
      ],
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required Color valueColor,
    required String label,
    required Color labelColor,
    required IconData icon,
    required Color iconBg,
    required Color iconColor,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: valueColor,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.circle, size: 10, color: labelColor),
                    SizedBox(width: 6),
                    Text(
                      label,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: labelColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(shape: BoxShape.circle, color: iconBg),
            child: Icon(icon, color: iconColor, size: 24),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String label, Color color, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.circle, size: 12, color: color),
            SizedBox(width: 8),
            Text(label, style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500)),
          ],
        ),
        Text(value, style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
