import 'package:flutter/material.dart';

class MateriPage4 extends StatefulWidget {
  @override
  _MateriPage4State createState() => _MateriPage4State();
}

class _MateriPage4State extends State<MateriPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HUKUM ARCHIMEDES",
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
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  titleContent('Hukum Archimedes', 20),
                  contentMaterial('Jika anda mengamati sebuah benda yang diletakan di dalam air terasa lebih ringan dibandingkan dengan beratnya ketika diudara dana apabilasuatu benda dicelupkan ke dalam zat cair maka benda akan mendapat gaya ke atas seberat zat cair yang dipindahkan. Misalkan sebuah benda diukur dengan neraca pegas seperti gambar dibawah ini:'),
                  imageCaption('assets/images/materi4_1.jpeg', 'Gambar: Penerapan Hukum Archimedes'),
                  imageCaption('assets/images/materi4_2.jpeg', ''),
                  titleContent('Tenggelam, Melayang, dan Terapung', 16),
                  contentMaterial('Jika sebuah benda dicelupkan ke dalam zat cair akan mempunyai tiga kemungkinan, yaitu tenggelam, melayang, atau terapung.'),
                  titleContent('a. Tenggelam', 14),
                  imageCaption('assets/images/materi4_3.jpeg', 'Gambar: Mekanisme benda tenggelam'),
                  contentMaterial('Sebuah benda akan tenggelam dalam zat cair, jika:\n\nw > FA\nρb > ρa\nVb = Va'),
                  titleContent('b. Melayang', 14),
                  imageCaption('assets/images/materi4_4.jpeg', 'Gambar: Mekanisme benda melayang'),
                  contentMaterial('Sebuah benda akan tenggelam dalam zat cair, jika:\n\nw = FA\nρb = ρa\nVb = Va'),
                  titleContent('c. Terapung', 14),
                  imageCaption('assets/images/materi4_5.jpeg', 'Gambar: Mekanisme benda terapung'),
                  contentMaterial('Sebuah benda akan melayang dalam zat cair, jika:\n\nw < FA\nρb < ρa\nVb = Va + x\n\nKeterangan: \nx = volume benda yang terapung di atas permukaan zat cair (m³)'),
                  titleContent("Contoh Soal", 16),
                  contentMaterial('\t\t\t\t\tBerapa volume batu yang dimasukkan ke dalam air laut jika berat air laut yang dipindahkan batu adalah 2 Newton ? Massa jenis air laut = 1025 kg/m³'),
                  titleContent("Pembahasan", 16),
                  contentMaterial('Diketahui :\n\n\t\t\t\t\tW air laut = 2 N\n\t\t\t\t\tΡ = 1025 kg/m³\n\nDitanya : \n\nVolume batu ?\n\nJawab :\n\nHukum Archimedes menyatakan bahwa berat air yang tumpah (air yang dipindahkan oleh besi) sama dengan besar gaya apung yang dikerjakan air pada besi.'),
                  imageCaption('assets/images/materi4_6.jpeg', ''),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container titleContent(String bigTitle, double fontSize) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom:5),
        child: Text(bigTitle,
          textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.amber)
            ),
      );
  }
  
  Column imageCaption(String imagePath, String imageCaption) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
          alignment: Alignment.center,
          width: double.infinity,
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        Container(
            child: Text(
                imageCaption,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
        )
      ],
    );
  }

  Material contentMaterial(String titleKompetensi) {
    return Material(
      color: Colors.transparent,
      elevation: 80,
      child: Container(
        width: double.infinity,
        // padding: EdgeInsets.all(20),
        color: Colors.transparent,
        margin: EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
        child: Text(titleKompetensi, textAlign: TextAlign.justify,style: TextStyle(color: Colors.white, fontSize: 14),),
      ),
    );
  }
}