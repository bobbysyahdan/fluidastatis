import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SoalPage extends StatefulWidget {
  @override
  _SoalPageState createState() => _SoalPageState();
}

class _SoalPageState extends State<SoalPage> {
  int answer_1 = 0;
  int answer_2 = 0;
  int answer_3 = 0;
  int answer_4 = 0;
  int answer_5 = 0;
  int answer_6 = 0;
  int answer_7 = 0;
  int answer_8 = 0;
  int answer_9 = 0;
  int answer_10 = 0;
  int answer_11 = 0;
  int answer_12 = 0;
  int answer_13 = 0;
  int answer_14 = 0;
  int answer_15 = 0;
  int answer_16 = 0;
  int answer_17 = 0;
  int answer_18 = 0;
  int answer_19 = 0;
  int answer_20 = 0;

  int correctScore = 0;
  List<int> answers = [];

  void _handleRadioValueChange1(int value) {
    setState(() {
      answer_1 = value;
      // switch (answer_1) {
      //   case 0:
      //     Fluttertoast.showToast(
      //         msg: 'Correct !', 
      //         toastLength: Toast.LENGTH_SHORT,
      //         gravity: ToastGravity.CENTER,
      //         timeInSecForIosWeb: 1,
      //         backgroundColor: Colors.red,
      //         textColor: Colors.white,
      //         fontSize: 16.0,
      //       );
      //     correctScore++;
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(
      //         msg: 'Try again !',
      //         toastLength: Toast.LENGTH_SHORT,
      //         gravity: ToastGravity.CENTER,
      //         timeInSecForIosWeb: 1,
      //         backgroundColor: Colors.red,
      //         textColor: Colors.white,
      //         fontSize: 16.0
      //     );
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(
      //         msg: 'Try again !', 
      //         toastLength: Toast.LENGTH_SHORT,
      //         gravity: ToastGravity.CENTER,
      //         timeInSecForIosWeb: 1,
      //         backgroundColor: Colors.red,
      //         textColor: Colors.white,
      //         fontSize: 16.0
      //     );
      //     break;
      // }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      answer_2 = value;
    });
  }
  void _handleRadioValueChange3(int value) {
    setState(() {
      answer_3 = value;
    });
  }
  void _handleRadioValueChange4(int value) {
    setState(() {
      answer_4 = value;
    });
  }
  void _handleRadioValueChange5(int value) {
    setState(() {
      answer_5 = value;
    });
  }

  void _handleRadioValueChange6(int value) {
    setState(() {
      answer_6 = value;
    });
  }

  void _handleRadioValueChange7(int value) {
    setState(() {
      answer_7 = value;
    });
  }

  void _handleRadioValueChange8(int value) {
    setState(() {
      answer_8 = value;
    });
  }

  void _handleRadioValueChange9(int value) {
    setState(() {
      answer_9 = value;
    });
  }

  void _handleRadioValueChange10(int value) {
    setState(() {
      answer_10 = value;
    });
  }

  void _handleRadioValueChange11(int value) {
    setState(() {
      answer_11 = value;
    });
  }

  void _handleRadioValueChange12(int value) {
    setState(() {
      answer_12 = value;
    });
  }

  void _handleRadioValueChange13(int value) {
    setState(() {
      answer_13 = value;
    });
  }

  void _handleRadioValueChange14(int value) {
    setState(() {
      answer_14 = value;
    });
  }

  void _handleRadioValueChange15(int value) {
    setState(() {
      answer_15 = value;
    });
  }

  void _handleRadioValueChange16(int value) {
      setState(() {
        answer_16 = value;
      });
    }

  void _handleRadioValueChange17(int value) {
    setState(() {
      answer_17 = value;
    });
  }

  void _handleRadioValueChange18(int value) {
    setState(() {
      answer_18 = value;
    });
  }

  void _handleRadioValueChange19(int value) {
    setState(() {
      answer_19 = value;
    });
  }

  void _handleRadioValueChange20(int value) {
    setState(() {
      answer_20 = value;
    });
  }


  void _pushAnswers() {
    if(answer_1 == 0 || answer_2 == 0 || answer_3 == 0 || answer_4 == 0 || answer_5 == 0 ||
      answer_6 == 0 || answer_7 == 0 || answer_8 == 0 || answer_9 == 0 || answer_10 == 0 ||
      answer_11 == 0 || answer_12 == 0 || answer_13 == 0 || answer_14 == 0 || answer_15 == 0 ||
      answer_16 == 0 || answer_17 == 0 || answer_18 == 0 || answer_19 == 0 || answer_20 == 0
    ) {
      Fluttertoast.showToast(
        msg: "Kamu harus menjawab semua pertanyaan", 
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14
      );
    } else {
      answers.add(answer_1);
      answers.add(answer_2);
      answers.add(answer_3);
      answers.add(answer_4);
      answers.add(answer_5);
      answers.add(answer_6);
      answers.add(answer_7);
      answers.add(answer_8);
      answers.add(answer_9);
      answers.add(answer_10);
      answers.add(answer_11);
      answers.add(answer_12);
      answers.add(answer_13);
      answers.add(answer_14);
      answers.add(answer_15);
      answers.add(answer_16);
      answers.add(answer_17);
      answers.add(answer_18);
      answers.add(answer_19);
      answers.add(answer_20);
      Get.offNamed('/pembahasanSoal', arguments: answers);

      // Fluttertoast.showToast(
      //     msg: answers.toString(), 
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SOAL LATIHAN",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        body: Stack(
          children: [
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
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                  'SILAHKAN DIJAWAB YA TEMAN-TEMAN \n KAMU PASTI BISA',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.amber,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                
                soalLatihan(_handleRadioValueChange1, answer_1,
                    '1. Sebuah benda dapat melayang di dalam air dikarenakan...',
                    'a.	Massa jenis benda sama dengan massa jenis fluida',
                    'b.	Massa jenis benda lebih besar dari pada massa jenis fluida',
                    'c.	Massa jenis benda lebih kecil dari massa jenis fluida',
                    'd.	Massa jenis benda dua kali kecil massa jenis fluida',
                    'e.	Massa jenis benda setengah massa jenis fluida',
                ),

                soalLatihan(_handleRadioValueChange2, answer_2,
                    '2. Seorang anak menimbang sebuah batu dengan menggunakan neraca pegas. Ketika ditimbang 3 batu memiliki gaya sebesar 8 N, namun ketika dimasukkan ke dalam tabung berisi air dan ditimbang gaya batu menjadi 7 N, peristiwa diatas disebabkan oleh...',
                    'a.	Massa batu berkurang',
                    'b.	Massa jenis batu berkurang',
                    'c.	Ada gaya keatas pada batu oleh air',
                    'd.	Gaya gravitasi terhadap batu berkurang',
                    'e.	Massa jenis batu bertambah tetapi massa batu berkurang',
                ),

                soalLatihan(_handleRadioValueChange3, answer_3,
                    '3. Sebuah benda dalam mobil diisi udara volumenya 0,1m³ massanya 5 kg. Apabila ban itu digunakan sebagai pengapung di dalam air (massa jenis 10³ kg/m³ dan percepatran gravitasi 10 m/s²). Besar beban maksimumnya yang dapat diapungkan adalah...',
                    'a.	100 kg',
                    'b.	99 kg',
                    'c. 98 kg',
                    'd.	97 kg',
                    'e.	95 kg',
                ),

                soalLatihan(_handleRadioValueChange4, answer_4,
                    '4. Gaya apung yang bekerja pada suatu benda di dalam fluida adalah : \n\t\t\t\t\t1.	Sebanding dengan kerapatan fluida \n\t\t\t\t\t2.	Sebanding dengan kerapatan benda\n\t\t\t\t\t3.	Sebanding dengan volume benda yang tercelup\n\t\t\t\t\t4.	Sebanding dengan massa benda\nAri empat pernyatan tersebut, pernyataan yang benar ditunjukkan nomor ...',
                    'a.	1,2 dan 3',
                    'b.	1 dan 3',
                    'c.	2 dan 3',
                    'd.	4',
                    'e.	1,2,3 dan 4',
                ),

                soalLatihan(_handleRadioValueChange5, answer_5,
                    '5. Sebuah balok massa jenisnya 2.500 kg/m³ dan ketika di udara beratnya 25 Newton. Tentukan berat balok di dalam air jika massa jenis air 1000 kg/m3 dan percepatan gravitasi bumi 10 m/s² ?',
                    'a.	10 N',
                    'b.	11 N',
                    'c.	20 N',
                    'd.	15 N',
                    'e.	17 N',
                ),

                soalLatihan(_handleRadioValueChange6, answer_6,
                    '6. Tekanan atmosfer pada permukaan laut sebesar 1,01 x 10⁵ Pa. Kenapa kita tidak merasakan tekanan atmosfer menekan tubuh kita ?',
                    'a.	Besar tekanan atmosfer dianggap nol karena gravitasi',
                    'b.	Kita telah terbiasa dengan tekanan atmosfer sejak kita lahir',
                    'c.	Cairan pada tubuh kita menekan keluar tubuh dengan gaya yang sama besar',
                    'd.	Gaya gravitasi meniadakan rasa akan adanya tekanan',
                    'e.	Tidak diketahui penyebabnya',
                ),

                soalLatihan(_handleRadioValueChange7, answer_7,
                    '7. Diketahui seorang wanita bermassa 50 kg memakai sepatu hak tinggi dengan luas permukaan bawah hak 1 cm². Tekanan yang dialami lantai apabila wanita berdiri dengan satu kakinya sebesar ',
                    'a.	50 Pa',
                    'b.	500 Pa',
                    'c.	5.000 Pa',
                    'd.	5 x 10⁴ Pa',
                    'e.	5 x 10⁶ Pa',
                ),

                soalLatihan(_handleRadioValueChange8, answer_8,
                    '8. Sebuah kolam renang dalamnya 5,2 m berisi penuh air. Jika massa jenis air 1 gr/cm³ dan percepatan gravitasi g = 10 m/s², maka tekanan hidrostatis suatu titik yang berada 40 cm di atas dasar bak adalah ....',
                    'a.	Naiknya minyak pada sumbuh kompor dan obor minyak tanah',
                    'b.	Naiknya air tanah menuju daun pada tumbuhan ',
                    'c.	Meresapnya air pada kain yang direndam',
                    'd.	Naiknya air pada dinding rumah sehingga dinding rumah basah',
                    'e.	Naiknya air pada pipet saat disedot',
                ),

                soalLatihan(_handleRadioValueChange9, answer_9,
                    '9. Sebuah penampang air setinggi 10 m penih berisi air. Jika permukaan penampang air tersebut tanpa penetup, berapakah tekanan air pada dasar wadah? \ng = 10 m/s²',
                    'a.	1,1 x 10⁵ Pa',
                    'b.	2,0 x 10⁵ Pa ',
                    'c.	0,1 x 10⁵ Pa',
                    'd.	1,2 x 10⁵ Pa',
                    'e.	3,0 x 10⁵ Pa',
                ),

              soalLatihan(_handleRadioValueChange10, answer_10,
                    '10. Andi menyelam di laut untuk mengambil gambar terumbu karang hingga mencapai kedalam 100 m dibawah di permukaan laut menggunakan tanki oksigen. Diketahui ternyata andi mengalami tekanan sebesar  11,3 x 10⁵ Pa . tekana yang dialami andi termasuk tekanan...',
                    'a.	Tekanan terukur ',
                    'b.	Tekanan gauge',
                    'c.	Tekanan absolut',
                    'd.	Tekanan hidrosttais',
                    'e.	Tekanan atmosfer',
                ),

                soalLatihan(_handleRadioValueChange8, answer_8,
                    '8. Tinggi air yang naik dalam pipa yang memiliki jari – jari 0,15 mm. Diketahui sudut kontaknya adalah nol (diketahui ϒair = 0,073)',
                    'a.	10,3 cm',
                    'b.	9,73 cm',
                    'c.	9,93 cm',
                    'd.	9,56 cm',
                    'e.	9,70 cm ',
                ),

                soalLatihan(_handleRadioValueChange9, answer_9,
                    '9. Bejana berhubungan ditutup oleh penghisap yang masinh-masing 6 cm2dan 24 cm². Apabila pada penghisap kecil diletakkan oleh gaya yang divariasikan sebesar 12 N, 8 N dan 4 N maka besar gaya yang menekan pada penghisap besar sacara berturut-turut dari yang terbesar sampai yang terkecil adalah...',
                    'a.	22 N, 12 N dan 10 N',
                    'b.	32 N, 24 N dan 12 N',
                    'c.	52 N, 48 N dan 24 N',
                    'd.	62 N, 54 N dan 12 N',
                    'e.	72 N, 48 N dan 24 N',
                ),

                soalLatihan(_handleRadioValueChange10, answer_10,
                    '10. Sebuah alat pengangkat mobil menggunakan luas penampang penghisap kecil 10 cm² dan penghisap besar 50 cm². Berapakah gaya yang mengangkat sebuah mobil 20.000 N ?',
                    'a. 1',
                    'b. 2',
                    'c. 3',
                    'd. 4',
                    'e. 5',
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('11.',
                    textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)
                      ),
                ),
                imageCaption('assets/images/soal11.jpeg', ''),
                soalLatihan(_handleRadioValueChange11, answer_11,
                    'Perhatikan gambar diatas ini, Jika luas penampang pipa besar adalah 250 kali luas penampang pipa kecil dan tekanan cairan pengisi pipa diabaikan, tentukan gaya minimal yang harus diberikan anak agar batu bisa terangkat!',
                    'a.	35 N',
                    'b.	40 N',
                    'c.	55 N',
                    'd.	50 N',
                    'e.	60 N',
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('12.',
                    textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)
                      ),
                ),
                imageCaption('assets/images/soal17.jpeg', ''),
                soalLatihan(_handleRadioValueChange12, answer_12,
                    'Perhatikan gambar diatas ini, jika luas penampang A1 = 0,001 m² dan A2 = 0,1 m² , maka besar gaya tekanan di A2 adalah …',
                    'a.	10 N',
                    'b.	1.00 N',
                    'c.	1000 N',
                    'd.	10.000 N',
                    'e.	100.000 N',
                ),

                soalLatihan(_handleRadioValueChange13, answer_13,
                    '13. Dongkrak hidrolik memiliki luas penampang masing-masing 0,04 m² dan 0,10 m². Apabila gaya masukan adalah 5 Newton, berapakah gaya keluaran maksimum ?',
                    'a. 12,5 N',
                    'b. 12,9 N',
                    'c. 13,0 N',
                    'd. 12,7 N',
                    'e. 11,5 N',
                ),

                soalLatihan(_handleRadioValueChange14, answer_14,
                    '14. Dongkrak hidrolik memiliki jari-jari penampang kecil sebesar 2 cm dan jari-jari penampang besar sebesar 25 cm. Berapakah gaya yang diberikan pada penampang kecil untuk mengangkat sebuah mobil bermassa 2000 kg ?',
                    'a. 105,23 N',
                    'b. 134,55 N',
                    'c. 125,44 N',
                    'd. 172 22 N',
                    'e. 111,24 N',
                ),

                soalLatihan(_handleRadioValueChange15, answer_15,
                    '15. Tekanan maksimum pada dongkrak hidrolik adalah 10 atm. Berapakah massa maksimum (kg) yang dapat diangkat jika diameter keluaran adalah 20 cm ?',
                    'a. 123,45 kg',
                    'b. 76,88 kg',
                    'c. 234,67 kg ',
                    'd. 2.454,8 kg',
                    'e. 3.245,7 kg',
                ),

                soalLatihan(_handleRadioValueChange16, answer_16,
                    '16. Sebuah kawat sepanjang 10 cm berada diatas permukaan zat cair, jika gaya tegangan permukaan 4 x 10-3 N maka besar tegangan permukaan zat cair adalah ...',
                    'a. 4,0 x 10¯³ N/m',
                    'b. 4 x 10¯² N/m',
                    'c. 2,5 x 10¯² N/m ',
                    'd. 2,0 x 10¯³  N/m',
                    'e. 2,0 x 10¯² N/m',
                ),

                soalLatihan(_handleRadioValueChange17, answer_17,
                    '17. Sebatang kawat dibengkokkan seperti huruf U. Kemudian kawat kecil AB bermassa 0,2 gram dipasang dalam kawat tersebut. Kemudian kawat ini dicelupkan dalam lapisan sabun dan diangkat vertikal sehingga terbentang satu lapisan sabun. Kawat AB mengalami gaya tarik ke atas. Agar terjadi kesetimbangan, maka kawat kecil AB digantungkan beban bermassa 0,1 gram. Jika panjang kawat AB = 20 cm dan g = 9,8 m/s², maka besar tegangan permukaan lapisan sabun adalah ...',
                    'a. 2,94 x 10¯³ N/m',
                    'b. 1,47 x 10¯³ N/m',
                    'c. 2,94 x 10¯² N/m',
                    'd. 1,47 x 10¯² N/m',
                    'e. 0,735 x 10¯² N/m',
                ),

                soalLatihan(_handleRadioValueChange18, answer_18,
                    '18. Sebuah kawat yang panjangnya 24 cm berada di permukaan air dengan panjangnya sejajar dengan permukaan. Koefisien tegangan permukaan air adalah 0,073 N/m. Gaya tambahan di luar berat kawat yang diperlukan untuk menarik kawat adalah ...',
                    'a. 5,2 x 10¯² N',
                    'b. 4,7 x 10¯² N',
                    'c. 3,9 x 10¯² N',
                    'd. 3,5 x 10¯² N',
                    'e. 3,0 x 10¯² N',
                ),

                soalLatihan(_handleRadioValueChange19, answer_19,
                    '19. Pada peristiwa tegangan permukaan diketahui gaya tegang 4 N, jika panjang permukaanya 20 cm, maka tentukanlah besar tegangan permukaannya ...',
                    'a. 10 N/m',
                    'b. 15 N/m',
                    'c. 25 N/m',
                    'd. 20 N/m',
                    'e. 30 N/m',
                ),

                soalLatihan(_handleRadioValueChange20, answer_20,
                    '20. Sebatang kawatdibengkokkan seperti huruf u. Kemudian kawat kecil pq  yang bermassa 0,2 gram dipasang dalam kawat tersebut. Kemudian kawat tersebut dicelupkan ke dalam cairan sabun dan diangkat vertikal sehingga ada lapisan tipis sabun di antara kawat tersebut, ketika ditarik keatas kawa kecil mengalami gaya tarik keatas oleh lapisan sabun , agar terjadi keseimbangan ,maka pada kawat kecil PQ digantunggkan pada benda dengan massa 0,5 gram. Jika panjang kawat PQ = 20 cm dan nilai gravitasi 10m/s², berapa tegangan sabun tersebut ...',
                    'a. 3,5 x 10¯² N/m',
                    'b. 2,0 x 10¯² N/m',
                    'c. 3,5 x 10¯³ N/m',
                    'd. 3,0 x 10¯³ N/m',
                    'e. 4,5x 10¯³ N/m',
                ),

                    // Divider(
                    //   height: 5.0,
                    //   color: Colors.amber[50],
                    // ),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                ),

                
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(15),
                child: RaisedButton(onPressed: _pushAnswers, child: Text('Jawab'), color: Colors.amber),
              ),
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

  Column soalLatihan(dynamic handleSoal, int jawaban, String textSoal, String jawaban1, String jawaban2, String jawaban3, String jawaban4, String jawaban5) {
    return 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 5),
            child: Text(
              textSoal,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
            ),
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: 
                Row(children: [
                  Radio(
                    value: 1,
                    groupValue: jawaban,
                    onChanged: handleSoal,
                    focusColor: Colors.amber,
                    hoverColor: Colors.amber,
                    activeColor: Colors.amber,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      jawaban1,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: 
                Row(children: [
                  Radio(
                    value: 2,
                    groupValue: jawaban,
                    onChanged: handleSoal,
                    focusColor: Colors.amber,
                    hoverColor: Colors.amber,
                    activeColor: Colors.amber,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      jawaban2,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: 
                Row(children: [
                  Radio(
                    value: 3,
                    groupValue: jawaban,
                    onChanged: handleSoal,
                    focusColor: Colors.amber,
                    hoverColor: Colors.amber,
                    activeColor: Colors.amber,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      jawaban3,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: 
                Row(children: [
                  Radio(
                    value: 4,
                    groupValue: jawaban,
                    onChanged: handleSoal,
                    focusColor: Colors.amber,
                    hoverColor: Colors.amber,
                    activeColor: Colors.amber,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      jawaban4,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: 
                Row(children: [
                  Radio(
                    value: 5,
                    groupValue: jawaban,
                    onChanged: handleSoal,
                    focusColor: Colors.amber,
                    hoverColor: Colors.amber,
                    activeColor: Colors.amber,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      jawaban5,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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
}
