import 'package:flutter/material.dart';

class MateriPage3 extends StatefulWidget {
  @override
  _MateriPage3State createState() => _MateriPage3State();
}

class _MateriPage3State extends State<MateriPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HUKUM PASCAL",
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
                  titleContent('Hukum Pascal', 20),
                  contentMaterial('Hukum Pascal menyatakan bahwa tekanan yang diberikan di dalam ruang tertutup diteruskan sama besar ke segala arah. Berdasarkan hokum ini diperoleh prinsip bahwa dengan gaya yang kecil dapat menghasilkan suatu gaya yang lebih besar.'),
                  imageCaption('assets/images/materi3_1.jpeg', 'Gambar: Prinsip kerja Hukum Pascal'),
                  imageCaption('assets/images/materi3_2.jpeg', ''),
                  titleContent('Penerapan Hukum Pascal pada kehidupan sehari-hari', 16),
                  contentMaterial('Dari hukum Pascal kita dapatkan bahwa dengan memberikan gaya yang kecil pada pengisap (piston) berdiameter (atau luas penampang) kecil, dapat diperoleh gaya yang besar pada pengisap berdiameter besar. Prinsip inilah yang dimanfaatkan pada peralatan teknik yang banyak membantu peralatan kita.'),
                  titleContent('Dongkrak hidrolik adalah alat yang digunakan untuk mengangkat mobil ketika mengganti ban mobil. Alat ini memanfaatkan dua buah silinder, yaitu silinder besar dan silinder kecil.', 16),
                  imageCaption('assets/images/materi3_3.jpeg', 'Gambar: Dongkrak hidrolik pengangkat.	'),
                  contentMaterial('Ketika dongkrak ditekan, minyak pada silinder kecil akan tertekan dan mengalir menuju silinder besar. Tekanan pada silinder besar akan menimbulkan gaya sehingga dapat mengangkat benda/beban berat. Jika kita menekan silinder kecil dengan gaya F1, maka tekanan yang dikerjakan adalah:\n\nP1 = F1/A1 \n\nSesuai hukum Pascal, tekanan ini juga dialami oleh silinder besar sehingga berlaku:\n\nP2 = P1'),
                  titleContent("Contoh Soal", 16),
                  contentMaterial('\t\t\t\t\tSuatu dongkrak hidrolik dengan sistem terisolasi didesain untuk mengangkat sebuah mobil seperti pada gambar di bawah ini.'),
                  imageCaption('assets/images/materi1_4.jpeg', ''),
                  contentMaterial('\t\t\t\t\tJika perbandingan luas penampang yang kecil dan besar adalah 1 : 5. Tentukanlah gaya yang diperlukan untuk mengangkat mobil dengan massa 800 Kg? (Gunakan percepatan gravitasi 10 m/s²).'),
                  titleContent("Pembahasan", 16),
                  contentMaterial('Diketahui :\n\n\t\t\t\t\tA1 : A2 = 1 : 5\n\t\t\t\t\tM = 800 Kg\n\t\t\t\t\tg = 10 m/s²\n\nDitanya : \n\nTentukanlah gaya yang diperlukan untuk mengangkat mobil?\n\nJawab :\n\nPerhatikan gaya angkat F2 sama dengan gaya berat mobil, yaitu F2 = W = Mg. Selanjutnya gunakan Rumus Hukum Pascal.\n\nPenyelesaian :'),
                  imageCaption('assets/images/materi1_5.jpeg', ''),
                  contentMaterial('Jadi, gaya yang diperlukan untuk mengangkat mobil tersebut adalah 1600 N.'),
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