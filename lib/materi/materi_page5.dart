import 'package:flutter/material.dart';

class MateriPage5 extends StatefulWidget {
  @override
  _MateriPage5State createState() => _MateriPage5State();
}

class _MateriPage5State extends State<MateriPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEGANGAN PERMUKAAN γ",
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
                  titleContent('Tegangan Permukaan γ', 20),
                  contentMaterial('Tegangan permukaan adalah gaya yang bekerja pada permukaan zat cair tiap satuan panjang. Tegangan permukaan hanya terdapat pada permukaan zat cair saja.'),
                  imageCaption('assets/images/materi5_1.jpeg', 'Gambar: Tegangan permukaan pada kawat'),
                  imageCaption('assets/images/materi5_2.jpeg', 'Gambar: Tegangan permukaan pada kawat'),
                  contentMaterial('Adanya tegangan permukaan menyebabkan nyamuk dapat berjalan diatas permukaan air.Penerapan Tegangan Permukaan Zat Cair dalam kehidupan sehari:'),
                  titleContent('Mencuci dengan air panas lebih mudah dan menghasilkan cucian yang lebih bersih.', 16),
                  contentMaterial('Tegangan permukaan dipengaruhi oleh suhu.Makin tinggi suhu air, makin kecil tegangan permukaan air dan ini berarti makin baik kemampuan air untuk membasahi benda.Karena itu, mencuci dengan air panas menyebabkan kotoran pada pakaian lebih mudah larut dan cucian menjadi lebih bersih.Detergen sintetis modern juga didesain untuk meningkatkan kemampuan air membasahi kotoran yang melekat pada pakaian, yaitu dengan menurunkan tegangan permukaan air. Banyak kotoran yang tidak larut dalam air segar, tetapi larut dalam air yang diberi detergen.'),
                  titleContent("Contoh Soal", 16),
                  contentMaterial('\t\t\t\t\tPada peristiwa tegangan permukaan diketahui gaya tergang 4 N. Jika panjang permukaannya 20 cm, maka tentukannlah besar tegangan  '),
                  titleContent("Pembahasan", 16),
                  contentMaterial('Diketahui :\n\n\t\t\t\t\tF = 4 N : 5\n\t\t\t\t\tL = 20 cm = 0,2 m\n\nDitanya : \n\nBesar tegangan γ ? \n\nJawab :'),
                  imageCaption('assets/images/materi5_3.jpeg', ''),
                 
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
          margin: EdgeInsets.only(top: 10, bottom:5, left: 5, right: 5),
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