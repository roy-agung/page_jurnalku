import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const Color primaryBlue = Color(0xFF0B4C8C);
  static const Color accentGreen = Color(0xFF18A85B);

  void _showMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  Widget _buildHeaderCard(BuildContext context) {
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
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/wikrama.png'),
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
                            color: primaryBlue,
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
                    backgroundColor: primaryBlue,
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
                    children: const [
                      Text(
                        'Bintang Novian Pramesrawan',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '12309572 | PPLG XII-4 | Tajur 6',
                        style: TextStyle(color: Colors.black54),
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
            labelColor: primaryBlue,
            unselectedLabelColor: Colors.black54,
            indicatorColor: primaryBlue,
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
            Text(text, style: const TextStyle(color: Colors.black54)),
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
                const Text('Curriculum Vitae', style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 6),
                const Text('Dokumen CV siswa', style: TextStyle(color: Colors.black54)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _showMessage(context, 'Lihat CV'),
                        icon: const Icon(Icons.description_outlined, color: Colors.white),
                        label: const Text('Lihat CV', style: const TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryBlue,
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
                const Text('Kartu Pelajar', style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 6),
                const Text('Kartu identitas siswa', style: TextStyle(color: Colors.black54)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () => _showMessage(context, 'Lihat Kartu Pelajar'),
                        icon: const Icon(Icons.credit_card, color: Colors.white),
                        label: const Text('Lihat Kartu Pelajar', style: const TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: accentGreen,
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
                  children: const [
                    Icon(Icons.info_outline, color: Colors.orange, size: 18),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Kartu pelajar dapat dilihat oleh anda dan guru',
                        style: TextStyle(color: Colors.black54),
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF6F8FB),
        appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Icon(Icons.home_outlined),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Bintang Novian Pramesrawan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PPLG XII-4",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/bintang.jpg'),
                ),
              ],
            ),
          ),
        ],
      ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.of(context).maybePop(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text('Kembali', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBlue,
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
                                    const Text('Portfolio Terbaru', style: TextStyle(fontWeight: FontWeight.w600)),
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
                                    const Text('Sertifikat Terbaru', style: TextStyle(fontWeight: FontWeight.w600)),
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
                        
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text('Dokumen', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                          ),
                        ),
                        _documentsSection(context),
                        const SizedBox(height: 16),
                        // Media Sosial card
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8, top: 8),
                            child: Text('Media Sosial', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Column(
                              children: const [
                                Text('Media sosial akan ditampilkan di sini', style: TextStyle(color: Colors.black54)),
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
                                    const Text('Portfolio Terbaru', style: TextStyle(fontWeight: FontWeight.w600)),
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

                  // Sertifikat tab (only sertifikat card)
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
                                    const Text('Sertifikat Terbaru', style: TextStyle(fontWeight: FontWeight.w600)),
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
      ),
    );
  }
}