import 'package:flutter/material.dart';

class MateriPage2 extends StatefulWidget {
  @override
  _MateriPage2State createState() => _MateriPage2State();
}

class _MateriPage2State extends State<MateriPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEKANAN HIDROSTATIS",
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
                  titleContent('Tekanan', 20),
                  contentMaterial('\t\t\t\t\tTekanan adalah besar gaya yang bekerja pada suatu permukaan tiap satuan luas permukaan. Untuk mempermudah mengetahui tekanan maka kita dapat melihat gambar yang ada di bawah ini.'),
                  imageCaption('assets/images/materi2_1.jpeg','Gambar: Tekanan pada suatu permukaan.'),
                  imageCaption('assets/images/materi2_2.jpeg',''),
                  contentMaterial('Semakin kecil luas permukaannya, maka semakin besar tekanannya. Itulah sebabnya paku, pisau, dan pasak dibuat runcing. Contoh lain dari aplikasi tekanan dalam kehidupan sehari-hari:'),
                  titleContent('Pemain Luncur Es', 16),
                  contentMaterial('Pemain luncur es menggunakan sepatu luncur untuk dapat meluncur di atas kolam es beku.Sepatu luncur yang digunakan memiliki pisau pada bagian bawahnya.Mengapa demikian? Hal ini karena pisau memiliki luas permukaan yang kecil sehingga memberikan tekanan yang besar pada lantai es beku dan membuat es yang berada tepat di bawah pisau mencair, tetapi kiri-kanannya tidak.Cairan tepat dibawah pisau berfungsi sebagai pelumas, sedang es beku di kiri dan kanan pisau tetap mencengkram pisau, sehingga sepatu luncur beserta pemain dapat meluncur di atas kolam beku, terlihat pada dibawah ini.'),
                  imageCaption('assets/images/materi2_3.jpeg','Gambar: Pemain luncur es sedang.'),
                  titleContent('Tekanan Hidrostatis', 20),
                  contentMaterial('\t\t\tTekanan Hidrostatis adalah Gaya gravitasi menyebabkan zat cair dalam suatu wadah selalu tertarik ke bawah.Makin tinggi zat cair dalam wadah, makin besar zat cair itu.Sehingga makin besar juga tekanan zat cair pada dasar wadahnya.Tekanan zat cair yang hanya disebabkan oleh beratnya sendiri disebut tekanan hidrostatis. \nMisalkan kita anggap zat cair terdiri dari beberapa lapis.Lapisan bawah ditekan oleh lapisan-lapisan di atasnya sehingga menderita tekanan yang lebih besar. Lapisan paling atas hanya ditekan oleh udara sehingga tekanan pada permukaan zat cair sama dengan tekanan atmosfer.'),
                  imageCaption('assets/images/materi2_5.jpeg','Gambar: Zat cair dapat dianggap terdiri dari lapisan-lapisan.'),
                  contentMaterial('Bayangkan luas penampang persegi panjang (luas yang diarsir), p x l,yang terletak pada kedalaman h di bawah permukaan zat cair (massa jenis = ρ, seperti tampak pada gambar 2.5. Volume zat cair dalam balok = p .l .h, sehingga massa zat cair didalam balok adalah'),
                  imageCaption('assets/images/materi2_6.jpeg',''),
                  imageCaption('assets/images/materi2_7.jpeg','Gambar: Tekanan Zat Cair Pada Balok.'),
                  contentMaterial('Tekanan zat cair di sembarang titik pada luas bidang yang diarsir adalah'),
                  imageCaption('assets/images/materi2_8.jpeg',''),
                  contentMaterial('Jadi, tekanan hidrostatis zat cair (Ph) dengan massa jenis ρ pada kedalaman h dirmuskan dengan'),
                  imageCaption('assets/images/materi2_9.jpeg',''),
                  titleContent('Tekanan Pada Suatu Kedalam Zat Cair', 16),
                  contentMaterial('Telah disebutkan sebelumnya bahwa pada lapisan atas zat cair bekerja tekanan atmosfer.Atmosfer adalah lapisan udara yang menyelimuti Bumi. Pada tiap bagian atmosfer bekerja gaya tarik gravitasi. Makin kebawah makin berat lapisan udara yangdi atasnya.Oleh karena itu, makin rendah bsuatu tempat makin tinggi tekanan atmosfernya. Di permukaan laut, tekanan atmosfer bernilai kira-kira 1 atm.'),
                  imageCaption('assets/images/materi2_10.jpeg', 'Gambar: Pada permukaan zat cair bekerja tekanan atmosfer P0'),
                  contentMaterial('Tekanan  hidrostatis zat cair ρgh dapat kita miripkan dengan tekanan gauge yaitu  P = Pgauge + Patm.  Dengan demikian, ekanan pada kedalaman h dirumuskan oleh'),
                  imageCaption('assets/images/materi2_11.jpeg', ''),
                  titleContent("Contoh Soal", 16),
                  contentMaterial('\t\t\t\t\tSebuah ikan hias berada di dalam akuarium yang di isi oleh air hingga setinggi 50 cm. Diketahui ikan tersebut berada 10 cm dari dasar akuarium, hitunglah tekanan hidrostatis yang dirasakan oleh ikan tersebut jika percepatan gravitasi bumi 9,8 m/ s² dan massa jenis air adalah 1000 Kg/m³.'),
                  contentMaterial('\t\t\t\t\tJika perbandingan luas penampang yang kecil dan besar adalah 1 : 5. Tentukanlah gaya yang diperlukan untuk mengangkat mobil dengan massa 800 Kg? (Gunakan percepatan gravitasi 10 m/s²).'),
                  titleContent("Pembahasan", 16),
                  contentMaterial('Diketahui :\n\n\t\t\t\t\th1 = 50 cm = 0,5 m (tinggi akuarium)\n\t\t\t\t\th2 = 10 cm = 0,1 m (Posisi ikan dari dasar akuarium)\n\t\t\t\t\tg = 9,8 m/s²\n\t\t\t\t\tρ = 1000 kg/m³\n\nDitanya :\n\nHitunglah tekanan hidrostatis yang dirasakan oleh ikan tersebut?\n\t\t\t\t\tRumus Tekanan Hidrostatis (Ph)\n\t\t\t\t\tPh = ρ.g.h\nIngat : h adalah kedalaman yang di ukur dari atas permukaan fluida (air), maka diperoleh'),
                  imageCaption('assets/images/materi2_12.jpeg', ''),
                  contentMaterial('Jawab :'),
                  imageCaption('assets/images/materi2_13.jpeg', ''),
                  contentMaterial('Jadi, Besar tekanan hidrostatis yang dirasakan oleh ikan tersebut adalah 4 kPa.'),

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