import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PROFILE",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.blue[200], Colors.blue[300]],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: 280,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.blue[400], Colors.blue[700]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )),
              ),
            ),
            ListView(
              children: [
                Column(children: [
                  Container(
                      width: 120,
                      height: 120,
                      margin: EdgeInsets.only(top: 30, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        border: Border.all(
                            width: 5, color: const Color(0xFFFFFFFF)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => FotoProfile());
                        },
                        child: Hero(
                          tag: 'FotoProfile',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image(
                                image: AssetImage('assets/images/profile.jpeg'),
                                fit: BoxFit.fill,
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      )),
                  titleContent("MASITA KHAIRANI", 20),
                  titleContent("4161121014", 16),
                  Card(
                    margin: EdgeInsets.only(
                        top: 30, bottom: 10, right: 30, left: 30),
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text('Judul Skripsi',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                      'Pengembangan Aplikasi Media Mobile Learning Berbasis Android Pada Materi Fluida Statis Pada Kelas XI MAN 3 Medan.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 50),
                                  child: Text('Jurusan Fisika',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                      'Fakultas Matematika dan Ilmu Pengetahuan Alam',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ])
              ],
            )
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

  Container titleContent(String bigTitle, double fontSize) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Text(bigTitle,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.amber)),
    );
  }
}

class FotoProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FOTO PROFILE'),
        ),
        body: Hero(
          tag: 'FotoProfile',
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.blue[200], Colors.blue[300]],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/profile.jpeg'),
                ),
              )
            ],
          ),
        ));
  }
}
