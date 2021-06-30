import 'package:FluidaStatis/indikator_dan_materi.dart';
import 'package:FluidaStatis/pembahasan_soal.dart';
import 'package:FluidaStatis/profile_page.dart';
import 'package:FluidaStatis/soal_page.dart';
import 'package:FluidaStatis/video_page.dart';
import 'package:FluidaStatis/materi_page.dart';
import 'package:flutter/material.dart';
import 'package:FluidaStatis/main_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MainPage()),
        GetPage(name: '/materi', page: () => MateriPage()),
        GetPage(name: '/soal', page: () => SoalPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/indikator', page: () => IndikatorDanMateri()),
        GetPage(name: '/video', page: () => VideoPage()),
        GetPage(name: '/pembahasanSoal', page: () => PembahasanSoal(), transition: Transition.zoom, transitionDuration: Duration(milliseconds: 500) ),
      ],
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}