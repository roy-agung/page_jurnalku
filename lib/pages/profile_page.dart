import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../services/session_manager.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const Color primaryBlue = Color(0xFF0B4C8C);
  static const Color accentGreen = Color(0xFF18A85B);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic>? _profile;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!SessionManager.isLoggedIn) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginPage()),
          (route) => false,
        );
        return;
      }
      _fetchProfile();
    });
  }

  Future<void> _fetchProfile() async {
    final nis = SessionManager.nis;
    if (nis == null) return;

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/profile'));
      if (response.statusCode != 200) {
        setState(() {
          _error = 'Gagal memuat profil (${response.statusCode})';
        });
        return;
      }

      final body = jsonDecode(response.body);
      final List<dynamic> raw =
          body is List ? body : (body['data'] as List<dynamic>? ?? []);

      for (final item in raw) {
        if (item is Map && item['nis']?.toString() == nis) {
          setState(() {
            _profile = item.map((key, value) => MapEntry(key.toString(), value));
          });
          return;
        }
      }

      setState(() {
        _error = 'Profil untuk NIS $nis tidak ditemukan.';
      });
    } catch (e) {
      setState(() {
        _error = 'Terjadi kesalahan: $e';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _showMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  Widget _buildHeaderCard(BuildContext context) {
    final nama = _profile?['nama']?.toString() ?? 'Nama tidak tersedia';
    final nis = _profile?['nis']?.toString() ?? '-';
    final rombel = _profile?['rombel']?.toString() ?? '-';
    final rayon = _profile?['rayon']?.toString() ?? '-';

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/wikrama.jpg'),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                bottom: -36,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 46,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(Icons.person_outline, size: 42, color: Colors.grey.shade700),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () => _showMessage(context, 'Ubah foto profil'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ProfilePage.primaryBlue,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: ElevatedButton(
                  onPressed: () => _showMessage(context, 'Bagikan profil'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ProfilePage.primaryBlue,
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Icon(Icons.share, size: 18, color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(height: 44),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nama,
                        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '$nis | $rombel | $rayon',
                        style: GoogleFonts.poppins(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Divider(height: 1),
          TabBar(
            labelColor: ProfilePage.primaryBlue,
            unselectedLabelColor: Colors.black54,
            indicatorColor: ProfilePage.primaryBlue,
            tabs: const [
              Tab(text: 'Overview'),
              Tab(text: 'Portfolio'),
              Tab(text: 'Sertifikat'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardPlaceholder(IconData icon, String text, {Color? iconColor}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
        child: Column(
          children: [
            Icon(icon, size: 36, color: iconColor ?? Colors.brown),
            const SizedBox(height: 10),
            Text(text, style: GoogleFonts.poppins(color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  Widget _documentsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Curriculum Vitae', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                const SizedBox(height: 6),
                Text('Dokumen CV siswa', style: GoogleFonts.poppins(color: Colors.black54)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _showMessage(context, 'Lihat CV'),
                        icon: const Icon(Icons.description_outlined, color: Colors.white),
                        label: Text('Lihat CV', style: GoogleFonts.poppins(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ProfilePage.primaryBlue,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        onPressed: () => _showMessage(context, 'Unduh CV'),
                        icon: const Icon(Icons.file_download),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kartu Pelajar', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                const SizedBox(height: 6),
                Text('Kartu identitas siswa', style: GoogleFonts.poppins(color: Colors.black54)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _showMessage(context, 'Lihat Kartu Pelajar'),
                        icon: const Icon(Icons.credit_card, color: Colors.white),
                        label: Text('Lihat Kartu Pelajar', style: GoogleFonts.poppins(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ProfilePage.accentGreen,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        onPressed: () => _showMessage(context, 'Unduh Kartu Pelajar'),
                        icon: const Icon(Icons.file_download),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.info_outline, color: Colors.orange, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Kartu pelajar dapat dilihat oleh anda dan guru',
                        style: GoogleFonts.poppins(color: Colors.black54),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_error!, style: GoogleFonts.poppins(color: Colors.red)),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _fetchProfile,
                child: const Text('Coba lagi'),
              ),
            ],
          ),
        ),
      );
    }

    if (_profile == null) {
      return Center(
        child: Text(
          'Profil tidak ditemukan.',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton.icon(
              onPressed: () => Navigator.of(context).maybePop(),
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              label: Text('Kembali', style: GoogleFonts.poppins(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: ProfilePage.primaryBlue,
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          const SizedBox(height: 12),
          _buildHeaderCard(context),
          const SizedBox(height: 16),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Portfolio Terbaru', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () => _showMessage(context, 'Tambah portfolio'),
                                        icon: const Icon(Icons.add_circle_outline),
                                        label: const Text('Tambah'),
                                      ),
                                      TextButton(
                                        onPressed: () => _showMessage(context, 'Lihat semua portfolio'),
                                        child: const Text('Lihat Semua'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              _cardPlaceholder(Icons.work_outline, 'Portfolio akan ditampilkan di sini'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sertifikat Terbaru', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () => _showMessage(context, 'Tambah sertifikat'),
                                        icon: const Icon(Icons.add_circle_outline),
                                        label: const Text('Tambah'),
                                      ),
                                      TextButton(
                                        onPressed: () => _showMessage(context, 'Lihat semua sertifikat'),
                                        child: const Text('Lihat Semua'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              _cardPlaceholder(Icons.emoji_events_outlined, 'Sertifikat akan ditampilkan di sini', iconColor: Colors.amber),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('Dokumen', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700)),
                        ),
                      ),
                      _documentsSection(context),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8, top: 8),
                          child: Text('Media Sosial', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w700)),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            children: [
                              Text('Media sosial akan ditampilkan di sini', style: GoogleFonts.poppins(color: Colors.black54)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 6),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Portfolio Terbaru', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () => _showMessage(context, 'Tambah portfolio'),
                                        icon: const Icon(Icons.add_circle_outline),
                                        label: const Text('Tambah'),
                                      ),
                                      TextButton(
                                        onPressed: () => _showMessage(context, 'Lihat semua portfolio'),
                                        child: const Text('Lihat Semua'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              _cardPlaceholder(Icons.work_outline, 'Portfolio akan ditampilkan di sini'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 6),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sertifikat Terbaru', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                                  Row(
                                    children: [
                                      TextButton.icon(
                                        onPressed: () => _showMessage(context, 'Tambah sertifikat'),
                                        icon: const Icon(Icons.add_circle_outline),
                                        label: const Text('Tambah'),
                                      ),
                                      TextButton(
                                        onPressed: () => _showMessage(context, 'Lihat semua sertifikat'),
                                        child: const Text('Lihat Semua'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              _cardPlaceholder(Icons.emoji_events_outlined, 'Sertifikat akan ditampilkan di sini', iconColor: Colors.amber),
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
        ],
      ),
    );
  }
}