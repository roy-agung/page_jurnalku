import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'catatan_sikap.dart';

class SettingAccountScreen extends StatefulWidget {
  const SettingAccountScreen({super.key});

  @override
  State<SettingAccountScreen> createState() => _SettingAccountScreenState();
}

class _SettingAccountScreenState extends State<SettingAccountScreen> {
  bool passowrdVisible = false;

  @override
  void initState() {
    super.initState();
    passowrdVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            Expanded(child:
            Icon(Icons.home),
            
            ),
              Padding(padding: EdgeInsets.only(left: 210),),
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
            child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pengaturan Akun', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text('Dashboard', style: TextStyle(
                  fontSize: 16,
                ),
                ),
                Text(' / ' , style: TextStyle(
                  fontSize: 16,
                )),
                Text('Pengaturan Akun', style: TextStyle(
                  fontSize: 16
                ))
                ],
                ),
                SizedBox(height: 20,),
                
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Informasi Profil', style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 25, left: 25),
                          child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/roy.png'),
                        ),
                        ),
                        SizedBox(height: 10),
                        Text('Klik untuk mengubah foto'),
                        SizedBox(height: 17),
                        Text('Nama', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),

                        SizedBox(height: 10,),

                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.grey[200]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(padding: EdgeInsets.all(15),
                          child: Text('Roy Agung Pamungkas'),)
                        ),

                        SizedBox(height: 10,),

                        Text('NIS', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        SizedBox(height: 10,),
                        
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.grey[200]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(padding: EdgeInsets.all(12),
                          child: Text('12310024'),
                          )
                        ),
                        SizedBox(height: 10,),

                        Text('Rombel', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        SizedBox(height: 10,),

                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.grey[200]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(padding: EdgeInsets.all(12),
                          child: Text('PPLG XII-4'),
                          )
                        ),
                        SizedBox(height: 10,),

                        Text('Rayon', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        SizedBox(height: 10,),

                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.grey[200]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(padding: EdgeInsets.all(12),
                          child: Text('CIS 7'),
                          )
                        ),
                      ],
                      ),
                  )
                ),
              
              SizedBox(height: 20,),

              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ubah Kata Sandi', style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 25,),

                      Text('Kata Sandi Lama', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                      SizedBox(height: 10,),

                      Container(
                        height: 60,
                        width: double.infinity,
                        child: TextField(
                          obscureText: passowrdVisible,
                          decoration: InputDecoration(
                              helperText: "Masukkan kata sandi lama anda",
                              suffixIcon: IconButton(icon: Icon(
                                passowrdVisible ? 
                                Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    passowrdVisible = !passowrdVisible;
                                  }
                                  );
                                },
                                ),
                                alignLabelWithHint: false,
                                filled: true,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text('Kata Sandi Baru', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                      SizedBox(height: 10,),

                      Container(
                        height: 60,
                        width: double.infinity,
                        child: TextField(
                          obscureText: passowrdVisible,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(icon: Icon(
                                passowrdVisible ? 
                                Icons.visibility : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    passowrdVisible = !passowrdVisible;
                                  }
                                  );
                                },
                                ),
                                alignLabelWithHint: false,
                                filled: true,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                        ),
                      ),

                      Row(
                        children: [
                          SizedBox(height: 20,),
                      SizedBox( height: 50, width: 190,
                      child: ElevatedButton(onPressed:() {}, 
                      child: Text('Simpan Perubahan', style: TextStyle(fontSize: 16)), 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 15, 86, 143),
                        foregroundColor: Colors.white,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ) 
                      )
                      ),
                      SizedBox(width: 20,),
                      SizedBox( height: 50, width: 190,
                      child: ElevatedButton(onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CatatanSikap()),
                        );
                      }, 
                      child: Text('Catatan Sikap', style: TextStyle(fontSize: 16)), 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 15, 86, 143),
                        foregroundColor: Colors.white,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ) 
                      )
                      )
                        ],
                      )
                      
                      

                    ],
                    ),
                )
              )
              ],
            )
          )
          )
          
      );
    
  }
}