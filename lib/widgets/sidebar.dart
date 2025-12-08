import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ===== IMPORT HALAMAN =====
import '../pages/dashboard.dart';
import '../pages/progress.dart';
import '../pages/catatan_sikap.dart';
import '../pages/pengaturan_akun.dart';
import '../pages/panduan_penggunaan.dart';
import '../pages/permintaan_saksi_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  bool isDropdownOpen = true;

  late AnimationController _dropdownController;
  late Animation<double> _dropdownAnimation;

  final List<Widget> _pages = [
    DashboardPage(),
    PermintaanSaksiPage(),
    ProgressPage(),
    CatatanSikapPage(),
    PanduanPenggunaanPage(),
    PengaturanAkunPage(),
  ];

  @override
  void initState() {
    super.initState();

    // ✅ Inisialisasi controller dan animasi
    _dropdownController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _dropdownAnimation =
        CurvedAnimation(parent: _dropdownController, curve: Curves.easeInOut);

    // Buka dropdown awal jika perlu
    if (isDropdownOpen) {
      _dropdownController.value = 1.0;
    }
  }

  void _changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
      if (isDropdownOpen) {
        _dropdownController.forward();
      } else {
        _dropdownController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _dropdownController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F6FC),

      // ===== SIDEBAR MODERN =====
      endDrawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(32)),
        ),
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // ===== HEADER =====
              Container(
                height: 220,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF0A2E6D), Color(0xFF1E88E5)],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 40, color: const Color.fromARGB(255, 8, 87, 151)),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Roy Agung Pamungkas",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "PPLG XII-4",
                      style: GoogleFonts.poppins(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ===== DROPDOWN MENU =====
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: const Icon(Icons.grid_view_rounded, color: Color.fromARGB(255, 8, 87, 151)),
                    title: Text(
                      "Menu Utama",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                    ),
                    trailing: AnimatedRotation(
                      turns: isDropdownOpen ? 0.5 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: const Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                    onTap: _toggleDropdown,
                  ),
                ),
              ),

              SizeTransition(
                sizeFactor: _dropdownAnimation,
                axisAlignment: 1.0,
                child: Column(
                  children: [
                    _submenu("Dashboard", 0),
                  ],
                ),
              ),

              const Divider(height: 24, thickness: 1, indent: 16, endIndent: 16),

              // ===== MENU ITEMS =====
              _menuItem("Permintaan Saksi", Icons.assignment_rounded, 1),
              _menuItem("Progress", Icons.bar_chart_rounded, 2),
              _menuItem("Catatan Sikap", Icons.edit_note_rounded, 3),
              const Divider(height: 24, thickness: 1, indent: 16, endIndent: 16),
              _menuItem("Panduan Penggunaan", Icons.help_outline_rounded, 4),
              _menuItem("Pengaturan Akun", Icons.settings_rounded, 5),
              const SizedBox(height: 16),
              _menuItem("Logout", Icons.logout_rounded, -1),
            ],
          ),
        ),
      ),

      // ===== BODY =====
      body: SafeArea(
        child: Column(
          children: [
            // ===== TOP BAR FLOATING =====
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 8, offset: Offset(0, 4))
                ],
              ),
              child: Row(
                children: [
                  Text(
                    "Jurnalku",
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 73, 123, 210),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2),
                  ),
                  const Spacer(),
                  Builder(
                    builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.menu_rounded),
                        onPressed: () => Scaffold.of(context).openEndDrawer(),
                      );
                    },
                  ),
                ],
              ),
            ),

            // ===== HALAMAN =====
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }

  // ===== MENU ITEM =====
  Widget _menuItem(String title, IconData icon, int index) {
    bool isActive = _selectedIndex == index;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Material(
        color: isActive ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: ListTile(
          leading: Icon(icon, color: isActive ? Color.fromARGB(255, 8, 87, 151) : Colors.black54),
          title: Text(title,
              style: GoogleFonts.poppins(
                  color: isActive ? Color.fromARGB(255, 8, 87, 151) : Colors.black87,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal)),
          onTap: () {
            Navigator.pop(context);
            if (index != -1) _changePage(index);
          },
        ),
      ),
    );
  }

  // ===== SUBMENU =====
  Widget _submenu(String title, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 16, top: 4, bottom: 4),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: const Icon(Icons.circle, size: 10, color: Color.fromARGB(255, 8, 87, 151)),
          title: Text(title),
          onTap: () {
            Navigator.pop(context);
            _changePage(index);
          },
        ),
      ),
    );
  }
}
