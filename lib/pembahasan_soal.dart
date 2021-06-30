import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PembahasanSoal extends StatefulWidget {
  @override
  _PembahasanSoalState createState() => _PembahasanSoalState();
}

class _PembahasanSoalState extends State<PembahasanSoal> {
  List<int> answers = [];
  List<int> userAnswers = [];
  int score = 0;

  void resultScore() {
    setState(() {
      answers = [ 1, 3, 5, 2, 4, 
                  3, 5, 4, 1, 3,
                  2, 4, 1, 3, 5,
                  2, 5, 4, 4, 1];
      userAnswers = Get.arguments;
      if (answers[0] == userAnswers[0]) {
        score += 5;
      }
      if (answers[1] == userAnswers[1]) {
        score += 5;
      }
      if (answers[2] == userAnswers[2]) {
        score += 5;
      }
      if (answers[3] == userAnswers[3]) {
        score += 5;
      }
      if (answers[4] == userAnswers[4]) {
        score += 5;
      }
      if (answers[5] == userAnswers[5]) {
        score += 5;
      }
      if (answers[6] == userAnswers[6]) {
        score += 5;
      }
      if (answers[7] == userAnswers[7]) {
        score += 5;
      }
      if (answers[8] == userAnswers[8]) {
        score += 5;
      }
      if (answers[9] == userAnswers[9]) {
        score += 5;
      }
      if (answers[10] == userAnswers[10]) {
        score += 5;
      }
      if (answers[11] == userAnswers[11]) {
        score += 5;
      }
      if (answers[12] == userAnswers[12]) {
        score += 5;
      }
      if (answers[13] == userAnswers[13]) {
        score += 5;
      }
      if (answers[14] == userAnswers[14]) {
        score += 5;
      }
      if (answers[15] == userAnswers[15]) {
        score += 5;
      }
      if (answers[16] == userAnswers[16]) {
        score += 5;
      }
      if (answers[17] == userAnswers[17]) {
        score += 5;
      }
      if (answers[18] == userAnswers[18]) {
        score += 5;
      }
      if (answers[19] == userAnswers[19]) {
        score += 5;
      }
    });
  }

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => resultScore());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HASIL JAWABAN DAN PEMBAHASAN SOAL",
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
            children: [
              ClipPath(
                clipper: MainClipperPage(),
                child: Container(
                    width: double.infinity,
                    height: 250,
                    color: Colors.blue[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // (Get.arguments as List<int>).map((e) => Text(e.toString())).toList(),
                        Container(
                            child: Text(
                              'Kamu mendapatkan nilai:',
                              style: TextStyle(color: Colors.amber, fontSize: 18, fontWeight: FontWeight.w900),
                            )),
                        Container(
                            child: Text(
                          score.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.w900),
                        )),
                      ]),
                    ),
                ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Text(
                    'Pembahasan',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 18,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                pembahasanSoalJawaban(1, 'A', 'Sebuah benda dapat melayang di dalam air di karenakan massa jenis benda sama dengan massa jenis fluida.'),
                pembahasanSoalJawaban(2, 'C', 'Berdasarkan prinsip hukum Archimedes bahwa “ sebuah benda yang dicelupkan sebagian atau seluruhnya dalam zat cair akan mendapat gaya tekan keatas sebesar berat zat cair yang dipndahkan”.'),
                pembahasanSoalJawaban(3, 'E', 'Diketahui :\n V = 0,1 m³\nMban= 5 kg\nρair= 10³ kg/m³\ng = 10 m/s²\n\nDitanya : mbeban maksimum ?\n\nJawab :\nFa = Wbeban \nPgh = mg\n(10³) (10) (0,1) = m (10)m \nmaka massa maksimum adalah : \nmbeban maksimum = m – mban\nmbeban maksimum = 100 – 5 = 95 kg'), 
                pembahasanSoalJawaban(4, 'B', 'Gaya apung atau gaya archimeds dirumuskan \nFA = ρ.f.gV’\nBesar gaya archimeds dipengaruhi \n\t\t\t\t\t-	ρf, massa jenis fluida\n\t\t\t\t\t-	g, percepatan gravitasi V’, volume benda tercelup'),
                pembahasanSoalJawaban(5, 'D', 'Diketahui :\nρb = 2.500 kg/m³\nA1 = 24 cm²\nwu = 25 N\nρf = 1000 kg/m³\n\nDitanya :\nwf ?\n\nJawab :\nρb / ρf = wu / Fa\n(2500) / (1000 ) = 25 / Fa\n2.5 Fa = 25\nFa = 25 / 2.5\nFa = 10 N\nKetika benda tenggelam, maka berlaku :\nFa = wa - wf\n10 = 25 – wf\nwf = 25 - 10\nwf = 15 N\nJadi berat balok di dalam air adalah sebesar 15 Newton.'), 
                pembahasanSoalJawaban(6, 'C', 'Darah dan cairan yang ada dalam tubuh manusia memberikan tekanan yang sama besar dengan tekanan atmosfer keluar tubuh. Karena tekanan yang menekan keluar di dalam tubuh sama dengan tekanan atmosfer yang menekan tubuh, maka kita tidak merasakan adanya tekanan atmosfer yang senantiasa menekan tubuh'), 
                pembahasanSoalJawaban(7, 'E', 'Diketahui : \nm = 50 kg\n\tA = 1 cm²\nMaka tekanan yang dberikan wanita pada lantai sebagai berikut :\n\nJawab :\nP = F/A\nP = m.g/A\nP = 50.10/(10 -4 ) = 5 x 10⁵ pa'),
                pembahasanSoalJawaban(8, 'D', 'Diketahui : \nh = 5,2 \n   = 40 cm ( 0,4 m )\n   = 5,2 – 0,4 = 4,8 m \nρ = 1 gr/ cm³ = 1000 kg/ cm³\n\nDitanya : \nPh = ....?\n\njawab :\nPh = 1.000.10.4,8\n      = 48.000 N/m² = 48.000\nPa = 48kPa'),
                pembahasanSoalJawaban(9, 'A', 'Diketahui :\nh = 10 m\nρ = 10 x 10³ kg/ m³\ng =10 m/s²\n\nDitanya : \n P = ....?\n\nJawab :\nP = pa + ρgh\nP = (1 x 10⁵ kg/ms²)(1,00 x 10³ kg/m³)(10 m/s²)(10m)\nP = 1 x 10⁵ kg/ms²+ 0,1 x 10⁵ kg/ms²\nP = 1,1 x 10⁵ kg/ms²'),
                pembahasanSoalJawaban(10, 'C', 'Diketahui :\nPa = 1 x10³ kg/ m³\nρ = 1,03 x 10³ kg/ m³\ng = 10 m/s²\nh = 100 m\nJawab :\nP = pa + ρgh\nP = 1 x10⁵ kg/m³ + (1,03 x 10³ kg/m³) (10 m/s²) (100 m)\nP = 1 x10⁵ kg/m³ + 1030000 kg/m²\nP = 1 x10⁵ kg/m³ + 1,03 x 1 x10⁵ kg/ m²\nP = 11,3 x 10⁵ kg/ m²\nP = 11,3 x 10⁵ Pa'),
                pembahasanSoalJawaban(11, 'B', 'Hukum Pascal\nData :\nF1 = F\nF2 = Wbatu = (1000)(10) = 10000 N\nA1 : A2 = 1 : 250\n\nF1/A1 = F2/A2 \nF/A = 10000 / 250\n = 40 N '),
                pembahasanSoalJawaban(12, 'D', 'Diketahui :\nA1 = 0,001 m²\nA2 = 0,1 m²\nF1 = 100 N \n\nDitanya :\nF2...?\n\nJawab : \nHukum Pascal menyatakan bahwa tekanan yang diberikan pada suatu zat cair diteruskan oleh zat cair itu ke segala arah, di mana semua bagian zat cair itu mengalami tekanan yang sama besar.\nP1 = P2\nF2 = (0,1)(100.000 N)\nF2 = 10.000 N '),
                pembahasanSoalJawaban(13, 'A', 'Diketahui :\nA1 = 0,04 m²\nA2 = 0,10 m²\nF1 = 5 N\n\nDitanya : \nF2 = ...?\n\nJawab :\nF1/A1 = F2/A2\n5 N/(0,04 m²) = F2/(0,01 m²)\n125 =  F2/0,10\nF2 = 125 x 0,10\nF2 = 12,5 N'),
                pembahasanSoalJawaban(14, 'C', 'Diketahui :\nr1= 2 cm = 0,02 m\nr2 = 25 cm = 0,25 m\nA1 = (3,14)(0,02)² = 0,001256 m²\nA2 = (3,14)(0,25)² = 0,19625 m²\nF2= w = m.g = (2000)(9,8 m/s²)= 19600 N\n\nDitanya : \nF1 = ...?\n\nJawab :\nF1/A1 = F2/A2\nF1 = (F2/A2)A1\nF1 = (19600/0,19625) 0,001256\nF1 = 125,44 N'),
                pembahasanSoalJawaban(15, 'E', 'Diketahui :\n1 atm = 1,013 x 10⁵ N/m²\np ukur = 10 atm = (10)(1,013 x 10⁵ N/m²) = 10,13 x 10⁵ N/m²\nF1 = 10,13 x 10⁵ N/m²\nA1 = 1 m²\nA2 = (3,14)(0,10 m)² = 0,0314 m²\n\nDitanya : \nF2 = ...?\n\nJawab :\nF1/A1 = F2/A2\nF2 = (F1/A1)A2\nF2 = (1013000 / 1) 0,0314\nF2 = 31, 808 N\nMassa maksimum \nW = m.g\n31,808 = m. (9,8)\nm = 3.245,7 kg'),
                pembahasanSoalJawaban(16, 'B', 'Diketahui :\nL = 10 cm  = 0,1 m\nF = 4 x 10¯³ N\n\nDitanya : \nγ = ...?\n\nJawab :\nMaka tegangan permukaan dihitung dengan rumus sebaga berikut :\nγ = F/L = (4 x 10¯³) / 0,1 = 4 x 10¯² N'),
                pembahasanSoalJawaban(17, 'E', 'Diketahui :\nmₖ = 0,2 gram = 0,2 x 10¯³ kg\nm𝚋 = 0,1 gram = 0,1 x 10¯³ kg\ng = 9,8 m/s²\nl = 20 cm = 0,2 m\n\nDitanya : \nTegangan permukaan lapisan sabun (γ) ?\n\nJawab :\nγ = F/2L = W+T / 2L\nγ = mₖg+mbg / 2L\nγ = (0,2 x 10¯³)(9,8)(0,1 x 10¯³)(9,8) / 2x0,2\nγ = 2,94 x 10¯³ / 0,4\nγ = 0,735 x 10¯² N/m\nJadi, tegangan permukaan lapisan sabun adalah 0,735 x 10¯² N/m'),
                pembahasanSoalJawaban(18, 'D', 'Diketahui :\nl = 24 cm = 24 x 10¯² m.\nγ = 0,073 N/m\n\nDitanya : \nGaya tambahan untuk menarik kawat (F) ?\n\nJawab :\nF = γ . d = γ. 2l\nF = 0,073 x 2 x 24 x 10¯²\nF = 0,073 x 48 x 10¯²\nF = 3,5 x 10¯² N'),
                pembahasanSoalJawaban(19, 'D', 'Diketahui :\nF = 4 N, L = 20 cm= 0,2\n\nDitanya : \nγ = ...?\n\nJawab :\nγ = F / L\nγ = 4 / 0,2\nγ = 20 N/m'),
                pembahasanSoalJawaban(20, 'A', 'Diketahui :\nm kawat = 0,2gram = 2 x 10¯⁴ kg\nPanjang kawat= 20 cm = 2 x 10¯¹ m\nm beban = 0,5 gram = 5 x 10¯⁴ kg\ng = 10 m/s² \n\nDitanya : \nγ = ...?\n\nJawab :\nF = berat kawat + berat benda\nF = (m.g) kawat + (m.g)benda\nF = 2 x 10¯⁴x 10 + 5 x 10¯⁴ x 10\nF = 2 x 10¯³ + 5 x 10¯³\nF = 7x 10¯³ N\nγ = F / L\nγ = 7x10¯³ / 2 x 2 x 10\nγ = 3,5 x 10¯² N/m'),
             ]),
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
    );
  }

  Column pembahasanSoalJawaban(int nomor, String jawaban, String pembahasan) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  nomor.toString()+'. Jawaban: ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                child: Text(
                  jawaban,
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        Container(
          // width: 300,
          margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
          child: Text(
            pembahasan,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

class MainClipperPage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      Path path = Path();
      path.lineTo(0, size.height);
      path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
      path.lineTo(size.width, 0);
      path.close();
      return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
