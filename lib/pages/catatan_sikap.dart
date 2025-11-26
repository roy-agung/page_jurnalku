import 'package:flutter/material.dart';

Widget tampilData(String labelData, String value) {
  return Padding(padding: EdgeInsets.all(10),
    child: Row(
      children: [
        SizedBox(
          width: 100, child: Text(labelData),),
          Expanded(child: Text(value),),
      ],
    ),
    );
}
class CatatanSikap extends StatefulWidget {
  const CatatanSikap({super.key});

  @override
  State<CatatanSikap> createState() => _CatatanSikapState();
}

class _CatatanSikapState extends State<CatatanSikap> {
  // List<Map<String, dynamic>> data = [
  //   {
  //     "catatan": "Total Catatan",
  //     "jumlah": 0,
  //     "icon": Icons.edit_document,

  //   },
  //   {
  //     "catatan": "Dalam Perbaikan",
  //     "jumlah": 0,
  //     "icon": Icons.flash_on
  //   },
  //   {
  //     "catatan": "Sudah Berubah",
  //     "jumlah": 0,
  //     "icon": Icons.check_circle_outline_sharp
  //   },
  // ];
  
  @override
/*************  ✨ Windsurf Command ⭐  *************/
/// Builds a page that displays the user's name and a list of catatan
/// sikap that they have reported. The page also includes a warning
/// message that instructs the user to contact the teacher if they have
/// any discrepancies in their catatan. The page also includes a link
/// to the teacher's contact information.

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            
              Padding(padding: EdgeInsets.only(left: 160),),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              Text('Roy Agung Pamungkas', style: TextStyle(fontSize: 18),),
              SizedBox(width: 10,),
              Text('PPLG XII-4', style: TextStyle(fontSize: 14),),
                ],
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/roy.png'),
                )
              
              ],)
          ),
          body: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Catatan Sikap Saya", style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                SizedBox(height: 10,),
                Text("Lihan catatan sikap saya dan perilaku yang telah dilaporkan", 
                style: TextStyle(fontSize: 16)
                ,),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 105,
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    border: Border.all(color: Colors.amber[200]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                        Icon(Icons.warning_amber, color: Colors.amber[700],),
                        SizedBox(width: 10,),
                        Text("Perhatian", style: TextStyle(
                          fontSize: 15, 
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 132, 84, 0),
                        ),
                        ),
            
                        ],
                        ),
                        SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jika Anda mereasa ada catatan yang tidak sesuai atau keliru, silahkan hubungi guru jurusan untuk mengajukan klarifikasi.",
                              style: TextStyle(color: const Color.fromARGB(255, 146, 83, 1)),
                              ),
                          ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Catatan", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                        ),
                          
                          Row(
                            children: [
                              Text("0", style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
            
                              Container(
                                margin: EdgeInsets.only(left: 370),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.blue[100],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.edit_document,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                  ],
                  ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dalam Perbaikan", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                        ),
                          
                          Row(
                            children: [
                              Text("0", style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
            
                              Container(
                                margin: EdgeInsets.only(left: 370),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.amber[100]!,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.flash_on_rounded,
                                  color: Colors.amber[400]!,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                  ],
                  ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sudah Berubah", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ],
                        ),
                          
                          Row(
                            children: [
                              Text("0", style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
            
                              Container(
                                margin: EdgeInsets.only(left: 370),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green[700],
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                  ],
                  ),
                  ),
                ),
                
              SizedBox(height: 20),
              Card(
                child: ExpansionTile(title: Text("Catatan Sikap"),
                subtitle: Text("Lihat Detail Catatan Sikap"),
                childrenPadding: EdgeInsets.all(16.0),
                children: [
                  tampilData("No", "-"),
                  tampilData("Kategori", "-"),
                  tampilData("Catatan", "-"),
                  tampilData("Status", "-"),
                  tampilData("Dilaporkan", "-"),
                  tampilData("Update Terakhir", "-"),
                  tampilData("Aksi", "-"),
                ],
                ),
              )
                
              ],
            ),
            ),
          ),
    );
  }
}