import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndikatorDanMateri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KOMPETENSI DASAR DAN INDIKATOR",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue[400], Colors.blue[700]],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ),
          ListView(
            children:<Widget> [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 30, bottom: 10, left: 20, right: 20),
                    child: Text("KOMPETENSI DASAR",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber)),
                  ),
                  kompetensiDasarIndikatorMaterial(
                      '3.3. Menerapkan hukum-hukum fluida statik dalam kehidupan sehari-hari.'),
                  kompetensiDasarIndikatorMaterial(
                      '4.3. Merencanakan dan melakukan percobaan yang memanfaatkan sifat-sifat fluida statis, berikut presentasi hasil dan makna Fisisnya.'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 30, bottom: 10, left: 20, right: 20),
                    child: Text("INDIKATOR PENCAPAIAN",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber)),
                  ),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.1. Menjelaskan hukum utama hidrostatis.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.2. Menjelaskan pengertian  tekanan hidrostatis.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.3. Menyebutkan faktor-faktor yang menentukan besarnya tekanan hidrostatis.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.4. Menjelaskan besarnya  tekanan hidrostatis.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.5. Menjelaskan bunyi Hukum Pascal.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.6. Merumuskan persamaan matematis Hukum Pascal.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.7. Dapat menyebutkan penerapan Hukum Archimedes dalam kehidupan sehari-hari.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.8. Menjelaskan bunyi hukum Archimedes.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.9. Merumuskan persamaan matematis Hukum Archimedes.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.10. Dapat menyebutkan penerapan Hukum Archimedes dalam kehidupan sehari-hari.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.11. Menjelaskan pengertian meniskus, gejala kapilaritas, viskositas dan Hukum Stakes.'),
                  kompetensiDasarIndikatorMaterial(
                      '3.3.12. Dapat menyebutkan penerapan meniskus, gejala kapilaritas, viskositas dan Hukum Stakes.'),
                  kompetensiDasarIndikatorMaterial(
                      '4.3.1. Melakukan percobaan mengenai Hukum Utama Hidrostatis dan penggunaanya dalam menghukum kerapatan fluida.'),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text("FLUIDA STATIS",
                    style: TextStyle(
                        fontFamily: "PineappleGrass",
                        fontSize: 30,
                        color: Colors.amber)),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                margin: EdgeInsets.all(0.0),
                padding:
                    EdgeInsets.only(top: 20, bottom: 10, left: 15, right: 15),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 26,
              ),
              title: Text(
                'Halaman Utama',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offAllNamed('/');
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book, size: 26),
              title: Text(
                'Materi',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offNamed('/materi');
              },
            ),
            ListTile(
              leading: Icon(Icons.book, size: 26),
              title: Text(
                'Soal Latihan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offNamed('/soal');
              },
            ),
            ListTile(
              leading: Icon(Icons.play_circle_outline_sharp, size: 26),
              title: Text(
                'Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offNamed('/video');
              },
            ),
            ListTile(
              leading: Icon(Icons.person, size: 26),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offNamed('/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.library_books, size: 26),
              title: Text(
                'Indikator Dan Materi',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Get.offNamed('/indikator');
              },
            ),
          ],
        ),
      ),
    );
  }

  Material kompetensiDasarIndikatorMaterial(String titleKompetensi) {
    return Material(
      color: Colors.transparent,
      elevation: 80,
      child: Container(
        width: double.infinity,
        // padding: EdgeInsets.all(20),
        color: Colors.transparent,
        margin: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20),
        //   gradient: LinearGradient(
        //     colors: [Colors.amber[200], Colors.amber[400]],
        //     begin: Alignment.bottomCenter,
        //     end: Alignment.topCenter,
        //   )
        // ),
        child: Text(titleKompetensi, textAlign: TextAlign.justify,style: TextStyle(color: Colors.white, fontSize: 14),),
      ),
    );
  }
}
