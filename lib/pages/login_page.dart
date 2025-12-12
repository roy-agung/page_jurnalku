import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Masuk untuk memulai ",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "Jurnalku",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 82, 162),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),

                    Text(
                      "Username atau NIS",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Username atau NIS",
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    Text(
                      "Password",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[50],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: TextField(
                        obscureText: hidePassword,
                        decoration: InputDecoration(
                          hintText: "Masukkan Password",
                          hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 14,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              hidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 19, 56, 135),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MainLayout()),
                        );
                      },
                      child: Text(
                        "Masuk",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lupa password?",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 19, 56, 135),
                          ),
                        ),
                        SizedBox(width: 5),

                        Text(
                          "Hubungi guru laboran.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 60),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Menyatukan Upaya untuk Kemajuan Siswa",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 25),

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.school_rounded,
                              color: Colors.orange[800],
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dirancang untuk Sekolah Kami",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
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

                    const SizedBox(height: 15),

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.analytics,
                              color: Colors.deepPurple,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pemantauan yang Terstruktur",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
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

                    const SizedBox(height: 25),

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.school_rounded,
                              color: Colors.orange[800],
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dirancang untuk Sekolah Kami",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
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

                    const SizedBox(height: 15),

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.analytics,
                              color: Colors.deepPurple,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pemantauan yang Terstruktur",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
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

              const SizedBox(height: 40),

              Container(
                color: const Color(0xFF032B53),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.call, color: Colors.white, size: 24),
                        SizedBox(width: 15),
                        Icon(Icons.camera, color: Colors.white, size: 24),
                        SizedBox(width: 15),
                        Icon(Icons.library_add, color: Colors.white, size: 24),
                        SizedBox(width: 15),
                        Icon(
                          Icons.video_camera_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
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
