import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("FLUIDA STATIS", style: TextStyle(fontFamily: "PineappleGrass", fontSize:  24)),
        // ),
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
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipPath(
                    clipper: MainClipperPage(),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.blue[300],
                      child: Center(child: Text("FLUIDA STATIS", style: TextStyle(fontFamily: "PineappleGrass", fontSize:  35,  color: Colors.amber)),)
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 20, bottom: 15, right: 25, left: 25),
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [Colors.grey[300], Colors.grey[100]],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                )
                              ),
                              child: Material(
                                elevation: 80,
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    //   return MateriPage();
                                    // }));
                                    Get.offNamed('/materi');
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.grey[300],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.menu_book,
                                        size: 50,
                                        color: Colors.black,
                                      ),
                                      Text('Materi', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),)
                                  ],),
                                ),
                              ),
                            ), 
                          ),
                        Flexible(
                          flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 20, bottom: 15, right: 25, left: 25),
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [Colors.grey[300], Colors.grey[100]],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                )
                              ),
                              child: Material(
                                elevation: 80,
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Get.offNamed('/soal');
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.grey[300],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.book,
                                        size: 50,
                                      ),
                                      Text('Soal Latihan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                  ],),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15, right: 25, left: 25),
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [Colors.grey[300], Colors.grey[100]],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                )
                              ),
                              child: Material(
                                elevation: 80,
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Get.offNamed('/video');
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.grey[300],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.play_circle_outline_sharp,
                                        size: 50,
                                      ),
                                      Text('Video', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                  ],),
                                ),
                              ),
                            ),
                          ),
                        Flexible(
                          flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15, right: 25, left: 25),
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [Colors.grey[300], Colors.grey[100]],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                )
                              ),
                              child: Material(
                                elevation: 80,
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    Get.offNamed('/profile');
                                  },
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.grey[300],
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.person,
                                        size: 50,
                                      ),
                                      Text('Profile', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                                  ],),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                  margin: EdgeInsets.only(top:20, right: 20, left: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
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
                          borderRadius: BorderRadius.circular(20),
                          child: Center(
                            child: Text('Kompetensi Dasar dan Indikator', 
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          splashColor: Colors.transparent,
                          onTap: (){
                            Get.offNamed('/indikator');
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20, right: 20, left: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: Text('Keluar', 
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            splashColor: Colors.amber,
                            onTap: (){
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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