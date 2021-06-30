import 'package:flutter/material.dart';

class MateriPage1 extends StatefulWidget {
  @override
  _MateriPage1State createState() => _MateriPage1State();
}

class _MateriPage1State extends State<MateriPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUIDA STATIS",
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
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                titleContent("Fluida Statis", 20),
                contentMaterial('\t\t\t\t\tFluida statis membahas tentang gaya dan tekana pada zat alir yang tidak bergerak. Zat yang termasuk zat alir adalah zat cair dan gas. Setiap zat baik padat, cair maupun gas masing-masing mempunyai volume, massa, massa jenis, berat dan berat jenis.'),
                titleContent("1. Massa Jenis", 16),
                contentMaterial('Massa jenis adalah massa parikel zat tiap satuan volume atau massa persatuan volume.'),
                imageCaption('assets/images/materi1_1.jpeg', ''),
                imageCaption('assets/images/materi1_2.jpeg', 'Tabel: Massa jenis beberapa zat cair.'),
                titleContent("2. Berat Jenis", 16),
                contentMaterial('Berat jenis adalah perbandingan antara berat zat dengan volumenya.'),
                imageCaption('assets/images/materi1_3.jpeg', ''),
              ]),
            ],
          )
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
