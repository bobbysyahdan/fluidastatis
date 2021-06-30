import 'package:FluidaStatis/video/video_page1.dart';
import 'package:FluidaStatis/video/video_page2.dart';
import 'package:FluidaStatis/video/video_page3.dart';
import 'package:FluidaStatis/video/video_page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("VIDEO",
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
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Center(
                        child: Text(
                          "SEMANGAT BELAJAR TEMAN-TEMAN",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.amber,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    materiMaterial('Tekanan Hidrostatis', 4),
                    materiMaterial('Hukum Pascal', 2),
                    materiMaterial('Hukum Archimedes', 1),
                    materiMaterial('Tegangan Permukaan γ', 3),
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
      ),
    );
  }

  Material materiMaterial(String titleMateri, int codeMateri) {
    return Material(
      color: Colors.transparent,
      elevation: 70,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.grey[300], Colors.grey[100]],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )
        ),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.transparent,
            child: Center(
              child: Text(
                titleMateri,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  if (codeMateri == 1) {
                    return VideoPage1();
                  } else if (codeMateri == 2) {
                    return VideoPage2();
                  } else if (codeMateri == 3) {
                    return VideoPage3();
                  } else if (codeMateri == 4) {
                    return VideoPage4();
                  } 
                  // else if (codeMateri == 3) {
                  //   return false;
                  // } else if (codeMateri == 4) {
                  //   return false;
                  // }
                  return VideoPage1();
                }));
              });
            },
          ),
        ),
      ),
    );
  }
}
