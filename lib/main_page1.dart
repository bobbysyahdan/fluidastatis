import 'package:flutter/material.dart';

class MainPage1 extends StatefulWidget {
  @override
  _MainPage1State createState() => _MainPage1State();
}

class _MainPage1State extends State<MainPage1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    Text("FLUIDA STATIS", style: TextStyle(fontFamily: "PineappleGrass", fontSize:  24))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                    child: Container(
                      width: 250,
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
                            child: Text('Menu', 
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          splashColor: Colors.amber,
                          onTap: (){},
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:10),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    child: Container(
                      width: 250,
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
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          splashColor: Colors.amber,
                          onTap: (){},
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
