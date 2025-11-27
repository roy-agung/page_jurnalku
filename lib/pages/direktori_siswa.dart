import 'package:flutter/material.dart';

class DirektoriSiswa extends StatelessWidget {
  const DirektoriSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white, elevation: 0, automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.menu_book_rounded, color: Color(0xFF1E3A8A), size: 20),
            SizedBox(width: 6),
            Text("Jurnalku", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1E3A8A),
              ),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(color: Color(0xFF1E3A8A), borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: const Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            //header
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(color: Color(0xFF1E3A8A)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Direktori Siswa",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text("Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 25),

                  //form input
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(hintText: "Cari nama siswa, NIS, atau rombel...",
                                  prefixIcon: const Icon(Icons.search_rounded),
                                  filled: true, fillColor: Colors.white,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 12),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(color: Colors.black12,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 12),

                            Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(horizontal: 22),
                              decoration: BoxDecoration(color: const Color(0xFF1E3A8A),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text("Cari", style: TextStyle(color: Colors.white, fontSize: 16,),),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        //filter
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.filter_list, size: 18, color: Colors.black87),
                              SizedBox(width: 6),
                              Text("Filter Lanjutan", style: TextStyle(fontSize: 14,color: Colors.black87,),
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Menampilkan 1 - 12 dari 538 siswa", style: TextStyle(fontSize: 14, color: Colors.black87,),
                  ),

                  const SizedBox(height: 20),

                  //card siswa
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage('assets/images/roy.png'),
                            ),

                           SizedBox(width: 16),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Safa Fadillah", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black87,),
                                ),
                                SizedBox(height: 4),
                                Text("12310027 | PPLG XII - 4 | Cic 2",style: TextStyle(fontSize: 13, color: Colors.black54,),
                                ),
                              ],
                            ),
                          ],
                        ),

                       SizedBox(height: 16),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.folder_open,size: 18, color: Colors.black54),
                                SizedBox(width: 6),
                                Text("2 Portfolio", style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.verified, size: 18, color: Colors.black54),
                                SizedBox(width: 6),
                                Text("13 Sertifikat",style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        ),

                       SizedBox(height: 16),

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
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Lihat Detail", style: TextStyle(color: Colors.white, fontSize: 14),),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_forward,size: 16, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15,),

                    Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage('assets/images/roy.png'),
                            ),

                           SizedBox(width: 16),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Roy Agung Pamungkas", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: Colors.black87,),
                                ),
                                SizedBox(height: 4),
                                Text("12510778 | PPLG X-3 | Cia 1",style: TextStyle(fontSize: 13, color: Colors.black54,),
                                ),
                              ],
                            ),
                          ],
                        ),

                       SizedBox(height: 16),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.folder_open,size: 18, color: Colors.black54),
                                SizedBox(width: 6),
                                Text("2 Portfolio", style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.verified, size: 18, color: Colors.black54),
                                SizedBox(width: 6),
                                Text("13 Sertifikat",style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        ),

                       SizedBox(height: 16),

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
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Lihat Detail", style: TextStyle(color: Colors.white, fontSize: 14),),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_forward,size: 16, color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),
                  

                  SizedBox(height: 30),

                  //next, previous
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, foregroundColor: Colors.black87, side: BorderSide(color: Colors.black26),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child:  Text("<< Previous"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, foregroundColor: Colors.black87, side: BorderSide(color: Colors.black26),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("Next >>"),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //footer
            Container(
              width: double.infinity,
              color: const Color(0xFF1E3A8A),
              padding: const EdgeInsets.symmetric(vertical: 28),
              child: Column(
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call, color: Colors.white, size: 20),
                      SizedBox(width: 20),
                      Icon(Icons.camera_alt, color: Colors.white, size: 20),
                      SizedBox(width: 20),
                      Icon(Icons.camera, color: Colors.white, size: 20),
                      SizedBox(width: 20),
                      Icon(Icons.video_library, color: Colors.white, size: 20),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                    style: TextStyle(color: Colors.white, fontSize: 12, height: 1.4,
                    ),
                    textAlign: TextAlign.center,
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
